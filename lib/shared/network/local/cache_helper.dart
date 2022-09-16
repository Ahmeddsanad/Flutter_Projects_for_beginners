// ignore_for_file: non_constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean({
    required String Key,
    required bool value,
  }) async
  {
    return await sharedPreferences.setBool(Key, value);
  }

  static dynamic getData({
    required String Key,
  }) {
    return sharedPreferences.get(Key);
     }


  static Future<bool> saveData({
    required String Key,
    required dynamic value,
  }) async
  {
    if(value is String) {
      return await sharedPreferences.setString(Key, value);
    }
    if(value is int) {
      return await sharedPreferences.setInt(Key, value);
    }
    if(value is bool) {
      return await sharedPreferences.setBool(Key, value);
    }
    // default (after if conditions -->)
    return await sharedPreferences.setDouble(Key, value);
  }

  static Future<bool> removeData({
    required String Key,
  }) async
  {
    return await sharedPreferences.remove(Key);
  }



}