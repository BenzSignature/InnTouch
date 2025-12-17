import 'package:get/get.dart';
import 'package:inn_touch/src/models/export_models.dart';

class AppMessages extends Translations {
  AppMessages({required this.languageModel});

  final LanguageModel languageModel;

  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": {...languageModel.englishJson},
    "th_TH": {...languageModel.thaiJson},
  };
}
