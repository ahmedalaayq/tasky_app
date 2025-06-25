import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  // apply SingleTon Pattern on Preference Manager file

  PreferenceManager._internal();

  static final PreferenceManager _instance = PreferenceManager._internal();

  factory PreferenceManager() => _instance;

  late final SharedPreferences pref;

  initPreference() async {
    pref = await SharedPreferences.getInstance();
  }

  setString({required String key, required String value}) async {
    await pref.setString(key, value);
  }

  String? getString({required String key}) {
    return pref.getString(key);
  }

  setBool({required String key, required bool value}) async {
    await pref.setBool(key, value);
  }

  bool? getBool({required String key}) {
    return pref.getBool(key);
  }
}
