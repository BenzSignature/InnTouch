import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class PersonalProfileView extends GetView<PersonalProfileController> {
  const PersonalProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentGold,
      appBar: CustomAppbar(
        name: 'Personal_Profile'.tr,
        haveProfile: false,
        onTap: () => controller.getBack(),
      ),
      body: CustomBodyCard(child: Column(
        children: [
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.accentGold,
                    child: CircleAvatar(
                      radius: 57,
                      backgroundImage: AssetImage(
                        'assets/images/ดอมินิค คอนเน็ตโต้.png',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.pickImage(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: AppColors.primaryDark,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: AppColors.accentGold,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              CustomTextField(
                controller: controller.nameController,
                hintText: 'Full_Name'.tr,
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller.emailController,
                hintText: 'Email'.tr,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller.phoneController,
                hintText: 'Phone_Number'.tr,
                prefixIcon: Icons.phone_android_outlined,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 40),
              // --- ปุ่มบันทึกข้อมูล ---
              ElevatedButton.icon(
                onPressed: () => controller.updateProfile(),
                icon: const Icon(Icons.save_rounded),
                label: Text('Save_Changes'.tr),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentGold,
                  foregroundColor: AppColors.primaryDark,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    }
  }