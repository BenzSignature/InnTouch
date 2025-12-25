import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        // leading: Icon(Icons.),
        centerTitle: true,
        title:  CustomText('Setting'.tr),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.edit_outlined, size: 20),
                label: CustomText('Edit_Profile'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.language, size: 20),
                label: CustomText('Language'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.payment, size: 20),
                label: CustomText('Payment'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.password, size: 20),
                label: CustomText('Change_Password'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.notification_add, size: 20),
                label: CustomText('Notification'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC5A367),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  // controller.profile();
                },
                icon: const Icon(Icons.help_center_outlined, size: 20),
                label: CustomText('Help_Center'.tr),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 205, 51, 4),
                  foregroundColor: const Color(0xFF202020),
                  minimumSize: const Size(double.infinity, 50),
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  controller.signOut();
                },
                icon: const Icon(Icons.logout, size: 20),
                label: CustomText('Log_Out'.tr)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
