// middleware/auth_middleware.dart

import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/routes/export_routes.dart';

class AuthMiddleware extends GetMiddleware {
  // NOTE: override redirect for condition change page
  @override
  RouteSettings? redirect(String? route) {
    final authController = Get.find<AuthController>();

    // NOTE: If user is Guest (isGuest เป็น true)
    if (authController.isGuest) {
      // NOTE: show dialog notification
      Future.delayed(Duration.zero, () => _showLoginRequiredDialog());
      return null;
    }
    // NOTE: if no Guest go to page nomal
    return null;
  }

  void _showLoginRequiredDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('Login Required'),
        content: const Text(
          'This feature is for members only. Please sign up or log in to continue.',
        ),
        actions: [
          TextButton(child: const Text('Cancel'), onPressed: () => Get.back()),
          ElevatedButton(
            child: const Text('Go to Register'),
            onPressed: () {
              Get.back();
              Get.toNamed(PathRoutes.register);
            },
          ),
        ],
      ),
    );
  }
}
