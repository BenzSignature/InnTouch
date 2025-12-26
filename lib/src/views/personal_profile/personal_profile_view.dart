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
      body: CustomBodyCard(child: Column()),
    );
  }
}
