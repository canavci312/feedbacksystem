// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeReportResponse _$EmployeeReportResponseFromJson(
    Map<String, dynamic> json) {
  return _EmployeeReportResponse.fromJson(json);
}

/// @nodoc
mixin _$EmployeeReportResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeReportResponseCopyWith<EmployeeReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeReportResponseCopyWith<$Res> {
  factory $EmployeeReportResponseCopyWith(EmployeeReportResponse value,
          $Res Function(EmployeeReportResponse) then) =
      _$EmployeeReportResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EmployeeReportResponseCopyWithImpl<$Res>
    implements $EmployeeReportResponseCopyWith<$Res> {
  _$EmployeeReportResponseCopyWithImpl(this._value, this._then);

  final EmployeeReportResponse _value;
  // ignore: unused_field
  final $Res Function(EmployeeReportResponse) _then;

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
abstract class _$EmployeeReportResponseCopyWith<$Res>
    implements $EmployeeReportResponseCopyWith<$Res> {
  factory _$EmployeeReportResponseCopyWith(_EmployeeReportResponse value,
          $Res Function(_EmployeeReportResponse) then) =
      __$EmployeeReportResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$EmployeeReportResponseCopyWithImpl<$Res>
    extends _$EmployeeReportResponseCopyWithImpl<$Res>
    implements _$EmployeeReportResponseCopyWith<$Res> {
  __$EmployeeReportResponseCopyWithImpl(_EmployeeReportResponse _value,
      $Res Function(_EmployeeReportResponse) _then)
      : super(_value, (v) => _then(v as _EmployeeReportResponse));

  @override
  _EmployeeReportResponse get _value => super._value as _EmployeeReportResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_EmployeeReportResponse(
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
class _$_EmployeeReportResponse implements _EmployeeReportResponse {
  _$_EmployeeReportResponse({this.meta, this.data});

  factory _$_EmployeeReportResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeReportResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'EmployeeReportResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeReportResponse &&
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
  _$EmployeeReportResponseCopyWith<_EmployeeReportResponse> get copyWith =>
      __$EmployeeReportResponseCopyWithImpl<_EmployeeReportResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeReportResponseToJson(this);
  }
}

abstract class _EmployeeReportResponse implements EmployeeReportResponse {
  factory _EmployeeReportResponse({final Meta? meta, final Data? data}) =
      _$_EmployeeReportResponse;

  factory _EmployeeReportResponse.fromJson(Map<String, dynamic> json) =
      _$_EmployeeReportResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmployeeReportResponseCopyWith<_EmployeeReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
