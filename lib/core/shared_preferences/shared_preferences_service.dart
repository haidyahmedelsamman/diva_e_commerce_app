import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService._privateConstructor();

  static final SharedPreferencesService _instance =
      SharedPreferencesService._privateConstructor();

  static SharedPreferencesService get instance => _instance;

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }

  Future<void> saveBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  Future<void> saveInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  Future<void> saveDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  Future<void> saveStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  Future<void> saveMap(String key, Map<String, dynamic> value) async {
    final jsonString = jsonEncode(value);
    await _prefs?.setString(key, jsonString);
  }

  Map<String, dynamic>? getMap(String key) {
    final jsonString = _prefs?.getString(key);
    if (jsonString != null) {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    }
    return null;
  }
}
