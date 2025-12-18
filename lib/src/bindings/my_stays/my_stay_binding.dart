import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class MyStaysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyStaysController());
  }
}
