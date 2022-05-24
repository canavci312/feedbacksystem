// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_counts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackCountsResponse _$FeedbackCountsResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedbackCountsResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedbackCountsResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCountsResponseCopyWith<FeedbackCountsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCountsResponseCopyWith<$Res> {
  factory $FeedbackCountsResponseCopyWith(FeedbackCountsResponse value,
          $Res Function(FeedbackCountsResponse) then) =
      _$FeedbackCountsResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackCountsResponseCopyWithImpl<$Res>
    implements $FeedbackCountsResponseCopyWith<$Res> {
  _$FeedbackCountsResponseCopyWithImpl(this._value, this._then);

  final FeedbackCountsResponse _value;
  // ignore: unused_field
  final $Res Function(FeedbackCountsResponse) _then;

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
abstract class _$FeedbackCountsResponseCopyWith<$Res>
    implements $FeedbackCountsResponseCopyWith<$Res> {
  factory _$FeedbackCountsResponseCopyWith(_FeedbackCountsResponse value,
          $Res Function(_FeedbackCountsResponse) then) =
      __$FeedbackCountsResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeedbackCountsResponseCopyWithImpl<$Res>
    extends _$FeedbackCountsResponseCopyWithImpl<$Res>
    implements _$FeedbackCountsResponseCopyWith<$Res> {
  __$FeedbackCountsResponseCopyWithImpl(_FeedbackCountsResponse _value,
      $Res Function(_FeedbackCountsResponse) _then)
      : super(_value, (v) => _then(v as _FeedbackCountsResponse));

  @override
  _FeedbackCountsResponse get _value => super._value as _FeedbackCountsResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_FeedbackCountsResponse(
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
class _$_FeedbackCountsResponse implements _FeedbackCountsResponse {
  _$_FeedbackCountsResponse({this.meta, this.data});

  factory _$_FeedbackCountsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackCountsResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'FeedbackCountsResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackCountsResponse &&
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
  _$FeedbackCountsResponseCopyWith<_FeedbackCountsResponse> get copyWith =>
      __$FeedbackCountsResponseCopyWithImpl<_FeedbackCountsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackCountsResponseToJson(this);
  }
}

abstract class _FeedbackCountsResponse implements FeedbackCountsResponse {
  factory _FeedbackCountsResponse({final Meta? meta, final Data? data}) =
      _$_FeedbackCountsResponse;

  factory _FeedbackCountsResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackCountsResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbackCountsResponseCopyWith<_FeedbackCountsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
