import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SecureStorageSource {
  late FlutterSecureStorage _secureStorage;

  SecureStorageSource() {
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );
  }

  Future<void> clearUserData() async {
    await _secureStorage.delete(key: SecureStorageKeys.tokenKey);
    await _secureStorage.delete(key: SecureStorageKeys.userLoginKey);
    await _secureStorage.delete(key: SecureStorageKeys.userNameKey);
    await _secureStorage.delete(key: SecureStorageKeys.passwordKey);
  }

  Future<TokenDto?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = await _secureStorage.read(key: SecureStorageKeys.tokenKey);
    if (token != null) {
      final tokenJson = jsonDecode(token);
      await prefs.setBool('isLoggedIn', true);
      return TokenDto.fromJson(tokenJson);
    }
    await prefs.setBool('isLoggedIn', false);
    return null;
  }

  Future<void> clearToken() {
    return _secureStorage.delete(key: SecureStorageKeys.tokenKey);
  }

  Future<void> storeToken(TokenDto token) {
    return _secureStorage.write(
      key: SecureStorageKeys.tokenKey,
      value: json.encode(token.toJson()),
    );
  }

  Future<void> storeUserName(String username) {
    return _secureStorage.write(
      key: SecureStorageKeys.userNameKey,
      value: username,
    );
  }

  Future<String?> getUserName() async {
    return _secureStorage.read(key: SecureStorageKeys.userNameKey);
  }

  Future<void> storeUserLogin(String login) {
    return _secureStorage.write(
      key: SecureStorageKeys.userLoginKey,
      value: login,
    );
  }

  Future<String?> getUserLogin() async {
    return _secureStorage.read(key: SecureStorageKeys.userLoginKey);
  }

  Future<void> storeUserPassword(String password) {
    return _secureStorage.write(
      key: SecureStorageKeys.passwordKey,
      value: password,
    );
  }

  Future<String?> getUserPassword() async {
    return _secureStorage.read(key: SecureStorageKeys.passwordKey);
  }

  Future<String?> getUserRole() async {
    return _secureStorage.read(key: SecureStorageKeys.userRoleKey);
  }

  Future<void> storeUserRole(String role) {
    return _secureStorage.write(
      key: SecureStorageKeys.userRoleKey,
      value: role,
    );
  }

  Future<void> storeDeviceId(String deviceId) {
    return _secureStorage.write(
      key: SecureStorageKeys.deviceId,
      value: deviceId,
    );
  }

  Future<String?> getDeviceId() async {
    return _secureStorage.read(key: SecureStorageKeys.deviceId);
  }

  /// if true - pin active, or no record(which means pin is active)
  Future<bool> getPinCodeActive() async {
    try {
      Map<String, dynamic> pinCodeStatuses = json.decode(
        await _secureStorage.read(key: SecureStorageKeys.pinCodeStatusKey) ??
            '',
      );
      final userLogin = await getUserLogin();
      if (userLogin == null) return true;

      return pinCodeStatuses[userLogin] ?? true;
    } catch (e) {
      return true;
    }
  }

  Future<void> setLocalAuthActive(bool isActive) async {
    Map<String, dynamic> localAuthStatuses;
    try {
      final localAuthJson =
          await _secureStorage.read(key: SecureStorageKeys.localAuthStatusKey);
      localAuthStatuses = json.decode(localAuthJson ?? '');
    } catch (e) {
      localAuthStatuses = {};
    }
    final userLogin = await getUserLogin();
    if (userLogin == null) return;

    localAuthStatuses[userLogin] = isActive;
    await _secureStorage.write(
      key: SecureStorageKeys.localAuthStatusKey,
      value: json.encode(localAuthStatuses),
    );
  }

  /// if true - local auth active, or no record(which means local auth is active)
  Future<bool> getLocalAuthActive(String? login) async {
    try {
      Map<String, dynamic> localAuthStatuses = json.decode(
        await _secureStorage.read(key: SecureStorageKeys.localAuthStatusKey) ??
            '',
      );
      final userLogin = await getUserLogin() ?? login;
      if (userLogin == null) return true;
      return localAuthStatuses[userLogin] ?? true;
    } catch (e) {
      return true;
    }
  }
}

mixin SecureStorageKeys {
  static const String deviceId = 'device_id';
  static const String tokenKey = 'app_token';
  static const String pinCodeKey = 'app_pin_code';
  static const String userLoginKey = 'app_user_login';
  static const String userNameKey = 'app_user_name';
  static const String userRoleKey = 'app_user_role';
  static const String passwordKey = 'app_password';
  static const String pinCodeStatusKey = 'app_pin_code_status';
  static const String localAuthStatusKey = 'app_local_auth_status';
  static const String salt = '5d41402abc4b2a76b9719d911017c592';
}
