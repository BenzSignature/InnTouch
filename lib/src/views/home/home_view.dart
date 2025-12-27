import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/home/export_home_controller.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomTopBar(
                  userName: controller.user.value?.name,
                  onTapNotification: () {
                    print("Open Notifications");
                    // Get.toNamed(Routes.notification);
                  },
                ),
              ),
              CustomImageBanner(
                imgList: controller.imgList,
                currentIndex: controller.currentBannerIndex,
                onTapButton: () {
                  print("Go to booking page!");
                  // Get.toNamed(Routes.booking);
                },
              ),
              const SizedBox(height: 10),
              const CustomMenuGrid(),
              const CustomSpecialOffers(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
