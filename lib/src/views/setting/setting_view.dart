import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentGold,
      appBar: CustomAppbar(name: 'Setting'.tr, haveProfile: true),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryDark,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      CustomTextButton(
                        name: 'Personal_Profile'.tr,
                        iconArrowRight: true,
                        onPressed: () {
                          controller.goToPersonalProfile();
                        },
                        icon: AppIcons.profile,
                      ),
                      CustomTextButton(
                        name: 'Language'.tr,
                        iconArrowRight: true,
                        onPressed: () {
                          controller.goToChangeLanguage();
                        },
                        icon: AppIcons.language,
                      ),
                      CustomTextButton(
                        name: 'Payment'.tr,
                        iconArrowRight: true,
                        onPressed: () {
                          controller.goToPayment();
                        },
                        icon: AppIcons.payment,
                      ),
                      CustomTextButton(
                        name: 'Change_Password'.tr,
                        iconArrowRight: true,
                        onPressed: () {},
                        icon: AppIcons.security,
                      ),
                      CustomTextButton(
                        name: 'Notification'.tr,
                        iconArrowRight: true,
                        onPressed: () {},
                        icon: AppIcons.notifications,
                      ),
                      CustomTextButton(
                        name: 'Support'.tr,
                        iconArrowRight: true,
                        onPressed: () {},
                        icon: AppIcons.support,
                      ),
                      CustomTextButton(
                        name: 'Log_Out'.tr,
                        iconArrowRight: false,
                        onPressed: () {
                          controller.signOut();
                        },
                        icon: AppIcons.logOut,
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                'App-name: ',
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                              CustomText(
                                'InnTouch',
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              CustomText(
                                'Version: ',
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                              CustomText(
                                '0.0.1',
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
