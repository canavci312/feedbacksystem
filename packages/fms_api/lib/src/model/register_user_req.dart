import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_req.freezed.dart';
part 'register_user_req.g.dart';

@freezed
class RegisterUserRequest with _$RegisterUserRequest {
  const factory RegisterUserRequest({
    required String email,
    required int phoneCode,
    required String phone,
    required String password,
    required String firstName,
    required String lastName,
    required String birthDate,
    required int cityId,
    required int educationId,
    required int roleId,
    required int companyId,
  }) = _RegisterUserRequest;

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestFromJson(json);
}
