// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_statistics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerStatisticsResponse _$CustomerStatisticsResponseFromJson(
    Map<String, dynamic> json) {
  return _CustomerStatisticsResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerStatisticsResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerStatisticsResponseCopyWith<CustomerStatisticsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStatisticsResponseCopyWith<$Res> {
  factory $CustomerStatisticsResponseCopyWith(CustomerStatisticsResponse value,
          $Res Function(CustomerStatisticsResponse) then) =
      _$CustomerStatisticsResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomerStatisticsResponseCopyWithImpl<$Res>
    implements $CustomerStatisticsResponseCopyWith<$Res> {
  _$CustomerStatisticsResponseCopyWithImpl(this._value, this._then);

  final CustomerStatisticsResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerStatisticsResponse) _then;

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
abstract class _$CustomerStatisticsResponseCopyWith<$Res>
    implements $CustomerStatisticsResponseCopyWith<$Res> {
  factory _$CustomerStatisticsResponseCopyWith(
          _CustomerStatisticsResponse value,
          $Res Function(_CustomerStatisticsResponse) then) =
      __$CustomerStatisticsResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CustomerStatisticsResponseCopyWithImpl<$Res>
    extends _$CustomerStatisticsResponseCopyWithImpl<$Res>
    implements _$CustomerStatisticsResponseCopyWith<$Res> {
  __$CustomerStatisticsResponseCopyWithImpl(_CustomerStatisticsResponse _value,
      $Res Function(_CustomerStatisticsResponse) _then)
      : super(_value, (v) => _then(v as _CustomerStatisticsResponse));

  @override
  _CustomerStatisticsResponse get _value =>
      super._value as _CustomerStatisticsResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_CustomerStatisticsResponse(
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
class _$_CustomerStatisticsResponse implements _CustomerStatisticsResponse {
  _$_CustomerStatisticsResponse({this.meta, this.data});

  factory _$_CustomerStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerStatisticsResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CustomerStatisticsResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerStatisticsResponse &&
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
  _$CustomerStatisticsResponseCopyWith<_CustomerStatisticsResponse>
      get copyWith => __$CustomerStatisticsResponseCopyWithImpl<
          _CustomerStatisticsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerStatisticsResponseToJson(this);
  }
}

abstract class _CustomerStatisticsResponse
    implements CustomerStatisticsResponse {
  factory _CustomerStatisticsResponse({final Meta? meta, final Data? data}) =
      _$_CustomerStatisticsResponse;

  factory _CustomerStatisticsResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomerStatisticsResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomerStatisticsResponseCopyWith<_CustomerStatisticsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
