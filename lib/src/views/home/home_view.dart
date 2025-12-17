import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/home/export_home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out',
            onPressed: () {
              controller.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          } else if (controller.user.value != null) {
            return Text(
              'Hello, ${controller.user.value!.name}!'.tr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          } else {
            return Text('Hello'.tr);
          }
        }),
      ),
    );
  }
}
