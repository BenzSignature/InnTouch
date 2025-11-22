import 'dart:developer';

import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/routes/export_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    log('SplashController onInit started');
    super.onInit();

    // NOTE: wait check user
    Future.delayed(const Duration(seconds: 2), () {
      // NOTE: Check any users still logged in
      if (FirebaseAuth.instance.currentUser != null) {
        // NOTE: if have go to Home pass Route
        log('User found, navigating to Home');
        Get.offAllNamed(PathRoutes.bottomNavBar);
      } else {
        // NOTE: in not go to Login pass Route
        log('No user, navigating to Login');
        Get.offAllNamed(PathRoutes.login);
      }
    });
  }
}
