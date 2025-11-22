import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class BottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => HomeController());
  }
}
