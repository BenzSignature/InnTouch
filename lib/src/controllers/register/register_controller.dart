import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/services/export_services.dart';

class RegisterController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void register() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    bool isRegisterSuccess = await _authService.signUp(
      name,
      email,
      password,
      phone,
    );
    if (isRegisterSuccess) {
      Get.offAllNamed(PathRoutes.bottomNavBar);
    } else {
      Get.snackbar(
        "Login Failed",
        "Invalid email or password.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void goToLogin() {
    Get.offAllNamed(PathRoutes.login);
  }
}
