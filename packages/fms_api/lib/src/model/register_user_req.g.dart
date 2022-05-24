// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterUserRequest _$$_RegisterUserRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterUserRequest(
      email: json['email'] as String,
      phoneCode: json['phoneCode'] as int,
      phone: json['phone'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      birthDate: json['birthDate'] as String,
      cityId: json['cityId'] as int?,
      educationId: json['educationId'] as int?,
      roleId: json['roleId'] as int?,
      companyId: json['companyId'] as int?,
    );

Map<String, dynamic> _$$_RegisterUserRequestToJson(
    _$_RegisterUserRequest instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'phoneCode': instance.phoneCode,
    'phone': instance.phone,
    'password': instance.password,
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'birthDate': instance.birthDate,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cityId', instance.cityId);
  writeNotNull('educationId', instance.educationId);
  writeNotNull('roleId', instance.roleId);
  writeNotNull('companyId', instance.companyId);
  return val;
}
