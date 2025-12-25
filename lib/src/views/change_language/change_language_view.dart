import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class ChangeLanguageView extends GetView<ChangeLanguageController> {
  const ChangeLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentGold,
      appBar: CustomAppbar(
        name: 'Language'.tr,
        haveProfile: false,
        onTap: () => controller.getBack(),
      ),
      body: CustomBodyCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26),
            CustomText(
              "Select_Language".tr,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            Obx(
              () => Column(
                children: [
                  CustomButtonSelectRadio(
                    title: "ภาษาไทย",
                    subTitle: "Thai",
                    languageCode: 'th',
                    isSelected: controller.currentLanguage.value == 'th',
                    onTap: () => controller.changeLanguage('th'),
                  ),
                  const SizedBox(height: 16),
                  CustomButtonSelectRadio(
                    title: "English",
                    subTitle: "English",
                    languageCode: 'en',
                    isSelected: controller.currentLanguage.value == 'en',
                    onTap: () => controller.changeLanguage('en'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
