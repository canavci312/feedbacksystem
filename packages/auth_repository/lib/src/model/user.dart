import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'Id') int? id,
    String? name,
    String? email,
    @JsonKey(name: 'RoleName') String? roleName,
    int? companyId,
    int? nbf,
    int? exp,
    int? iat,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
