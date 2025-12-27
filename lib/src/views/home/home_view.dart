import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/home/export_home_controller.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: CustomText('Home_Page'.tr)),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          } else if (controller.user.value != null) {
            return CustomText(
              'Hello, ${controller.user.value!.name}!'.tr,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            );
          } else {
            return CustomText('Hello Motherfucker'.tr);
          }
        }),
      ),
    );
  }
}
