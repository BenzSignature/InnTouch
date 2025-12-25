import 'package:get/get.dart';
import 'package:inn_touch/src/core/utils/prefs.dart';
import 'package:inn_touch/src/services/export_services.dart';

class ChangeLanguageController extends GetxController {
  var currentLanguage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    checkCurrentLanguage();
  }

  void checkCurrentLanguage() {
    String language = prefs.language;
    currentLanguage.value = language.toLowerCase();
  }

  void changeLanguage(String langCode) async {
    currentLanguage.value = langCode;
    String updateLanguage = langCode.toUpperCase();
    prefs.language = updateLanguage;
    await LocateService.updateLocate(updateLanguage);
  }

  void getBack() {
    Get.back();
  }
}
