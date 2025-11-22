import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
