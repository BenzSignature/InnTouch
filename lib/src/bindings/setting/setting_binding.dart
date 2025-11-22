import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
