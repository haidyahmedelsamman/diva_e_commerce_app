import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  // Private constructor
  SharedPreferencesService._privateConstructor();

  // The single instance of SharedPreferencesService
  static final SharedPreferencesService _instance =
      SharedPreferencesService._privateConstructor();

  // Getter to access the instance
  static SharedPreferencesService get instance => _instance;

  // SharedPreferences instance
  SharedPreferences? _prefs;

  // Initialize the SharedPreferences
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // Save a string value
  Future<void> saveString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Get a string value
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  // Save a boolean value
  Future<void> saveBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Get a boolean value
  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Save an integer value
  Future<void> saveInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Get an integer value
  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Save a double value
  Future<void> saveDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  // Get a double value
  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  // Save a list of strings
  Future<void> saveStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  // Get a list of strings
  List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  // Save a map as a JSON string
  Future<void> saveMap(String key, Map<String, dynamic> value) async {
    final jsonString = jsonEncode(value);
    await _prefs?.setString(key, jsonString);
  }

  // Get a map from a JSON string
  Map<String, dynamic>? getMap(String key) {
    final jsonString = _prefs?.getString(key);
    if (jsonString != null) {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    }
    return null;
  }
}
