import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_state.dart';
import 'package:sdugram_auth/src/common/data/sources/secure_storage_source.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/get_access_token_behavior.dart';

@lazySingleton
class AuthService implements GetAccessTokenBehavior {
  final SecureStorageSource _secureStorageDataSource;

  AuthService(this._secureStorageDataSource,);

  Future<void> storeUserDataToSecureStorage({
    required String username,
    required String password,
    required TokenDto token,
  }) async {
    await _secureStorageDataSource.storeUserPassword(password);
    await _secureStorageDataSource.storeUserName(username);
  }

  Future<void> setTokenState(TokenState tokenState) async {
    switch (tokenState) {
      case TokenUpdated(token: final token):
        await _secureStorageDataSource.storeToken(token);

      case TokenCleared():
        await _secureStorageDataSource.clearToken();
    }
  }

  Future<void> setUserRole({
    required String role,
  }) async {
    await _secureStorageDataSource.storeUserRole(role);
  }

  @override
  Future<String?> getAccessToken() async {
    final token = await _secureStorageDataSource.getToken();
    if (token == null) {
      await setTokenState(TokenCleared());
      return null;
    }
    return token.accessToken;
  }
}
