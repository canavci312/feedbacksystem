// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLoginResponse _$UserLoginResponseFromJson(Map<String, dynamic> json) {
  return _UserLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$UserLoginResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginResponseCopyWith<UserLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginResponseCopyWith<$Res> {
  factory $UserLoginResponseCopyWith(
          UserLoginResponse value, $Res Function(UserLoginResponse) then) =
      _$UserLoginResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, String? data});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserLoginResponseCopyWithImpl<$Res>
    implements $UserLoginResponseCopyWith<$Res> {
  _$UserLoginResponseCopyWithImpl(this._value, this._then);

  final UserLoginResponse _value;
  // ignore: unused_field
  final $Res Function(UserLoginResponse) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$UserLoginResponseCopyWith<$Res>
    implements $UserLoginResponseCopyWith<$Res> {
  factory _$UserLoginResponseCopyWith(
          _UserLoginResponse value, $Res Function(_UserLoginResponse) then) =
      __$UserLoginResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, String? data});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$UserLoginResponseCopyWithImpl<$Res>
    extends _$UserLoginResponseCopyWithImpl<$Res>
    implements _$UserLoginResponseCopyWith<$Res> {
  __$UserLoginResponseCopyWithImpl(
      _UserLoginResponse _value, $Res Function(_UserLoginResponse) _then)
      : super(_value, (v) => _then(v as _UserLoginResponse));

  @override
  _UserLoginResponse get _value => super._value as _UserLoginResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_UserLoginResponse(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLoginResponse implements _UserLoginResponse {
  _$_UserLoginResponse({this.meta, this.data});

  factory _$_UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserLoginResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final String? data;

  @override
  String toString() {
    return 'UserLoginResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoginResponse &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UserLoginResponseCopyWith<_UserLoginResponse> get copyWith =>
      __$UserLoginResponseCopyWithImpl<_UserLoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLoginResponseToJson(this);
  }
}

abstract class _UserLoginResponse implements UserLoginResponse {
  factory _UserLoginResponse({final Meta? meta, final String? data}) =
      _$_UserLoginResponse;

  factory _UserLoginResponse.fromJson(Map<String, dynamic> json) =
      _$_UserLoginResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLoginResponseCopyWith<_UserLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
