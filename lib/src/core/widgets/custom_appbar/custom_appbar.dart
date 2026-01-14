import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/home/home_controller.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomAppbar extends GetView<HomeController> implements PreferredSizeWidget {
  final String name;
  final bool haveProfile;
  final VoidCallback? onTap;
  const CustomAppbar({
    super.key,
    required this.name,
    this.haveProfile = false,
    this.onTap,
  });

  @override
  Size get preferredSize =>
      haveProfile ? Size.fromHeight(166) : Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 82, left: 20, right: 20),
      width: double.infinity,
      color: AppColors.accentGold,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              haveProfile
                  ? SizedBox.shrink()
                  : Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: onTap,
                        child: Icon(
                          AppIcons.arrowLeft,
                          size: 30,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
              CustomText(
                name,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 16),
          haveProfile
              ? Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/images/ดอมินิค คอนเน็ตโต้.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(
                              "Welcome".tr,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              controller.user.value?.name ?? "Guest".tr,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        ),
                        const SizedBox(height: 4),
                        CustomText(
                          "domminik@example.com",
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
