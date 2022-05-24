import 'package:fms_api/fms_api.dart';

/// {@template user_repository}
/// Repository for User related api calls
/// {@endtemplate}
class UserRepository {
  UserRepository(this._fmsApi);
  final FmsApi _fmsApi;
  Future<UserGetListResponse?> getUserList() async {
    return await _fmsApi.getUserList();
  }
}
