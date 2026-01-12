import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/utils/media_queery.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: ScreenUtil.screenHeight(context) / 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register'.tr,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: controller.nameController,
                hintText: 'Name'.tr,
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: controller.emailController,
                hintText: 'Email'.tr,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: controller.phoneController,
                hintText: 'Phone'.tr,
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: controller.passwordController,
                hintText: 'Password'.tr,
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.phone,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () async {
                  controller.register();
                },
                name: 'Register'.tr,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText("You_Already_have_an_account".tr),
                  TextButton(
                    onPressed: () {
                      controller.goToLogin();
                    },
                    child: CustomText(
                      'Log_in_here'.tr,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentGold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/logo_inntouch.png',
                fit: BoxFit.cover,
                scale: 3.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
