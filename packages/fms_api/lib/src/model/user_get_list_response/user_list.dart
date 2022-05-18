import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list.freezed.dart';
part 'user_list.g.dart';

@freezed
class UserList with _$UserList {
  factory UserList({
    int? id,
    String? email,
    String? phone,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    DateTime? registeredAt,
    DateTime? lastLoginAt,
    DateTime? lastFailedLoginAt,
    int? failedLoginAttemptCount,
    String? cityName,
    String? educationName,
    String? roleName,
    String? companyName,
    bool? isActive,
    bool? isTwoFactorAuth,
  }) = _UserList;

  factory UserList.fromJson(Map<String, dynamic> json) =>
      _$UserListFromJson(json);
}
