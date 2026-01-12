import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/utils/media_queery.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: AppColors.primaryDark,
        body: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: ScreenUtil.screenHeight(context) / 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo_inntouch.png',
                fit: BoxFit.cover,
                scale: 3.5,
              ),
              const SizedBox(height: 12),
              Center(child: CustomText('Log_In'.tr)),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller.emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: controller.passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () async {
                  controller.login();
                },
                name: 'Log_In'.tr,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText("ยังไม่มีบัญชี?"),
                  TextButton(
                    onPressed: () {
                      controller.goToRegister();
                    },
                    child: const CustomText(
                      'สมัครสมาชิกที่นี่',
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentGold,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  controller.signInAsGuest();
                },
                child: CustomText('Continue_as_guest'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
