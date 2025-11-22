import 'dart:developer';

import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/models/export_models.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/services/export_services.dart';

class HomeController extends GetxController {
  final FirebaseDatabaseService _db = FirebaseDatabaseService();
  final AuthService _authService = AuthService();
  final Rx<UserModel?> user = Rx<UserModel?>(null);
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    String currentUserId = FirebaseAuth.instance.currentUser!.uid;
    _loadUserData(currentUserId);
  }

  void _loadUserData(String uid) async {
    isLoading.value = true;
    user.value = await _db.fetchUserData(uid);
    isLoading.value = false;

    if (user.value != null) {
      log('User Name from Home Controller: ${user.value!.name}');
    } else {
      log('Failed to load user data.');
    }
  }

  void signOut() {
    log('signOut');
    _authService.signOut();
    Get.offNamed(PathRoutes.login);
  }
}
