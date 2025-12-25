import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CustomText('Log_In'.tr)),
              const SizedBox(height: 20),
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  hint: CustomText('Email'.tr),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: controller.passwordController,
                decoration: InputDecoration(
                  hint: CustomText('Password'.tr),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
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
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  controller.signInAsGuest();
                },
                child: CustomText('Continue_as_Guest'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
