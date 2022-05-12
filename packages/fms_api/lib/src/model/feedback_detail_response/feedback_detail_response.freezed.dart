// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackDetailResponse _$FeedbackDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedbackDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedbackDetailResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackDetailResponseCopyWith<FeedbackDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackDetailResponseCopyWith<$Res> {
  factory $FeedbackDetailResponseCopyWith(FeedbackDetailResponse value,
          $Res Function(FeedbackDetailResponse) then) =
      _$FeedbackDetailResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackDetailResponseCopyWithImpl<$Res>
    implements $FeedbackDetailResponseCopyWith<$Res> {
  _$FeedbackDetailResponseCopyWithImpl(this._value, this._then);

  final FeedbackDetailResponse _value;
  // ignore: unused_field
  final $Res Function(FeedbackDetailResponse) _then;

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
abstract class _$FeedbackDetailResponseCopyWith<$Res>
    implements $FeedbackDetailResponseCopyWith<$Res> {
  factory _$FeedbackDetailResponseCopyWith(_FeedbackDetailResponse value,
          $Res Function(_FeedbackDetailResponse) then) =
      __$FeedbackDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeedbackDetailResponseCopyWithImpl<$Res>
    extends _$FeedbackDetailResponseCopyWithImpl<$Res>
    implements _$FeedbackDetailResponseCopyWith<$Res> {
  __$FeedbackDetailResponseCopyWithImpl(_FeedbackDetailResponse _value,
      $Res Function(_FeedbackDetailResponse) _then)
      : super(_value, (v) => _then(v as _FeedbackDetailResponse));

  @override
  _FeedbackDetailResponse get _value => super._value as _FeedbackDetailResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_FeedbackDetailResponse(
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
class _$_FeedbackDetailResponse implements _FeedbackDetailResponse {
  _$_FeedbackDetailResponse({this.meta, this.data});

  factory _$_FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackDetailResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'FeedbackDetailResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackDetailResponse &&
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
  _$FeedbackDetailResponseCopyWith<_FeedbackDetailResponse> get copyWith =>
      __$FeedbackDetailResponseCopyWithImpl<_FeedbackDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackDetailResponseToJson(this);
  }
}

abstract class _FeedbackDetailResponse implements FeedbackDetailResponse {
  factory _FeedbackDetailResponse({final Meta? meta, final Data? data}) =
      _$_FeedbackDetailResponse;

  factory _FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackDetailResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbackDetailResponseCopyWith<_FeedbackDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
