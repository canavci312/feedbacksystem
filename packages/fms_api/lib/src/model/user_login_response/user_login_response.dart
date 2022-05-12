import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta.dart';

part 'user_login_response.freezed.dart';
part 'user_login_response.g.dart';

@freezed
class UserLoginResponse with _$UserLoginResponse {
  factory UserLoginResponse({
    Meta? meta,
    String? data,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);
}
