// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_get_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGetListResponse _$UserGetListResponseFromJson(Map<String, dynamic> json) {
  return _UserGetListResponse.fromJson(json);
}

/// @nodoc
mixin _$UserGetListResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGetListResponseCopyWith<UserGetListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetListResponseCopyWith<$Res> {
  factory $UserGetListResponseCopyWith(
          UserGetListResponse value, $Res Function(UserGetListResponse) then) =
      _$UserGetListResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserGetListResponseCopyWithImpl<$Res>
    implements $UserGetListResponseCopyWith<$Res> {
  _$UserGetListResponseCopyWithImpl(this._value, this._then);

  final UserGetListResponse _value;
  // ignore: unused_field
  final $Res Function(UserGetListResponse) _then;

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
              as Data?,
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

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserGetListResponseCopyWith<$Res>
    implements $UserGetListResponseCopyWith<$Res> {
  factory _$UserGetListResponseCopyWith(_UserGetListResponse value,
          $Res Function(_UserGetListResponse) then) =
      __$UserGetListResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserGetListResponseCopyWithImpl<$Res>
    extends _$UserGetListResponseCopyWithImpl<$Res>
    implements _$UserGetListResponseCopyWith<$Res> {
  __$UserGetListResponseCopyWithImpl(
      _UserGetListResponse _value, $Res Function(_UserGetListResponse) _then)
      : super(_value, (v) => _then(v as _UserGetListResponse));

  @override
  _UserGetListResponse get _value => super._value as _UserGetListResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_UserGetListResponse(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGetListResponse implements _UserGetListResponse {
  _$_UserGetListResponse({this.meta, this.data});

  factory _$_UserGetListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserGetListResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'UserGetListResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGetListResponse &&
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
  _$UserGetListResponseCopyWith<_UserGetListResponse> get copyWith =>
      __$UserGetListResponseCopyWithImpl<_UserGetListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGetListResponseToJson(this);
  }
}

abstract class _UserGetListResponse implements UserGetListResponse {
  factory _UserGetListResponse({final Meta? meta, final Data? data}) =
      _$_UserGetListResponse;

  factory _UserGetListResponse.fromJson(Map<String, dynamic> json) =
      _$_UserGetListResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserGetListResponseCopyWith<_UserGetListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
