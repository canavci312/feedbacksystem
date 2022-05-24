import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_req.freezed.dart';
part 'register_user_req.g.dart';

@freezed
class RegisterUserRequest with _$RegisterUserRequest {
  @JsonSerializable(
    includeIfNull: false,
  )
  const factory RegisterUserRequest({
    required String email,
    required int phoneCode,
    required String phone,
    required String password,
    required String firstName,
    required String lastName,
    required String birthDate,
    int? cityId,
    int? educationId,
    int? roleId,
    int? companyId,
  }) = _RegisterUserRequest;

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestFromJson(json);
}
