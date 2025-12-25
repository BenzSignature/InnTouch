import 'dart:developer';

import 'package:get/get.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/services/firebase/firebase_auth/export_firebase_auth.dart';

class SettingController extends GetxController {
  final AuthService _authService = AuthService();

  void goToChangeLanguage() {
    Get.toNamed(PathRoutes.changeLanguage);
  }

  void signOut() {
    log('signOut');
    _authService.signOut();
    Get.offNamed(PathRoutes.login);
  }
}
