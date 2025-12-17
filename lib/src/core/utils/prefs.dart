import 'package:inn_touch/src/config/constant/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _prefs;

  init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  String get language => _prefs?.getString(keyLanguage) ?? "TH";
  set language(String value) {
    _prefs?.setString(keyLanguage, value);
  }
}

final prefs = Prefs();
