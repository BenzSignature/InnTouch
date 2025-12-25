import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  const CustomAppbar({super.key, required this.name});

  @override
  Size get preferredSize => Size.fromHeight(166);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 82, left: 20, right: 20),
      width: double.infinity,
      color: AppColors.accentGold,
      child: Column(
        children: [
          CustomText(
            name,
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 16),
          Row(
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
                  Row(
                    children: [
                      CustomText(
                        "Hello".tr,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        "ดอมินิค คอนเน็ตโต้",
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  CustomText(
                    "domminik@example.com",
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
