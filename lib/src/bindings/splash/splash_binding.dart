import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
