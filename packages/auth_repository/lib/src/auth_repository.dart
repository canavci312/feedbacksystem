import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fms_api/fms_api.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'model/user.dart';

/// {@template auth_repository}
/// Authentication repository
/// {@endtemplate}
class AuthRepository {
  final storage = FlutterSecureStorage();

  AuthRepository(this._fmsApi);
  User? _user;
  Future<User?> currentUser() async {
    final token = await storage.read(key: 'token');
    if (token != null) {
      try {
        if (!JwtDecoder.isExpired(token)) {
          _user = User.fromJson(JwtDecoder.decode(token));
        }
      } catch (e) {
        return null;
      }
    }
    return _user;
  }

  final FmsApi _fmsApi;
  Future<void> login(String email, String password) async {
    try {
      String? token = await _fmsApi.login(email, password);
      if (token != null) {
        _user = User.fromJson(JwtDecoder.decode(token));
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
     await _fmsApi.unauthenticate();
    } catch (e) {
      rethrow;
    }
  }
}
