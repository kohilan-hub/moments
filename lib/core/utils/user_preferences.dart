import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUserID = 'uid';
  static const _keyUserName = 'name';
  static const _keyUserEmail = 'email';
  static const _keyUserPhoneNumber = 'phone';
  static const _keyUserRoleState = 'roleState';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUserID(String value) async =>
      await _preferences.setString(_keyUserID, value);

  static Future setUserName(String value) async =>
      await _preferences.setString(_keyUserName, value);

  static Future setEmail(String value) async =>
      await _preferences.setString(_keyUserEmail, value);

  static Future setPhoneNumber(String value) async =>
      await _preferences.setString(_keyUserPhoneNumber, value);

  static Future setRoleState(String value) async =>
      await _preferences.setString(_keyUserRoleState, value);

  static  String? getUserID() => _preferences.getString(_keyUserID);
  static  String? getUserName() => _preferences.getString(_keyUserName);
  static  String? getEmail() => _preferences.getString(_keyUserEmail);
  static  String? getPhoneNumber() => _preferences.getString(_keyUserPhoneNumber);
  static  String? getRoleState() => _preferences.getString(_keyUserRoleState);
}
  // static const myUser=User(
  //   name:,
  //   nic:,
  //   phone:,

  //   isDarkMode:false,
  // );


