import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:inn_touch/src/models/export_models.dart';

const String thaiPath = 'assets/translations/th-TH.json';
const String englishPath = 'assets/translations/en-US.json';

class LocateService {
  static Locale get thaiLocate => const Locale('th', 'TH');
  static Locale get englishLocate => const Locale('en', 'US');
  static Locale get fallbackLocale => thaiLocate;

  static Locale? getLocale(String language) {
    if (language.isEmpty) {
      return thaiLocate;
    }

    if (language == 'TH') {
      return thaiLocate;
    } else if (language == 'EN') {
      return englishLocate;
    }

    return Get.deviceLocale ?? thaiLocate;
  }

  static Future<Map<String, dynamic>> loadJson(String path) async {
    final jsonContent = await rootBundle.loadString(path);
    return json.decode(jsonContent);
  }

  static Future<LanguageModel> loadConfig() async {
    final Map<String, dynamic> thaiJson = await loadJson(thaiPath);
    final Map<String, dynamic> englishJson = await loadJson(englishPath);

    return LanguageModel(thaiJson: thaiJson, englishJson: englishJson);
  }

  static Future<void> updateLocate(String language) async {
    Locale? locale = getLocale(language) ?? fallbackLocale;
    await Get.updateLocale(locale);
  }
}
