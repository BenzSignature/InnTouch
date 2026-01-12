import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/services/export_services.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  final Rxn<User> _firebaseUser = Rxn<User>();
  bool get isGuest => _firebaseUser.value?.isAnonymous ?? false;
  User? get user => _firebaseUser.value;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'กรุณากรอกข้อมูลให้ครบถ้วน');
      return;
    }
    isLoading.value = true;
    bool isSuccess = await _authService.login(email, password);
    isLoading.value = false;
    if (isSuccess) {
      Get.offAllNamed(PathRoutes.bottomNavBar);
    } else {
      Get.snackbar(
        'Login Failed',
        'อีเมลหรือรหัสผ่านไม่ถูกต้อง',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void signInAsGuest() async {
    await _authService.signInAsGuest();
    Get.offAndToNamed(PathRoutes.bottomNavBar);
  }

  void goToRegister() {
    Get.offAllNamed(PathRoutes.register);
  }
}
