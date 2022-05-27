// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_feedback_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminFeedbackDetailsResponse _$AdminFeedbackDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminFeedbackDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminFeedbackDetailsResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminFeedbackDetailsResponseCopyWith<AdminFeedbackDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminFeedbackDetailsResponseCopyWith<$Res> {
  factory $AdminFeedbackDetailsResponseCopyWith(
          AdminFeedbackDetailsResponse value,
          $Res Function(AdminFeedbackDetailsResponse) then) =
      _$AdminFeedbackDetailsResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AdminFeedbackDetailsResponseCopyWithImpl<$Res>
    implements $AdminFeedbackDetailsResponseCopyWith<$Res> {
  _$AdminFeedbackDetailsResponseCopyWithImpl(this._value, this._then);

  final AdminFeedbackDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(AdminFeedbackDetailsResponse) _then;

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
abstract class _$AdminFeedbackDetailsResponseCopyWith<$Res>
    implements $AdminFeedbackDetailsResponseCopyWith<$Res> {
  factory _$AdminFeedbackDetailsResponseCopyWith(
          _AdminFeedbackDetailsResponse value,
          $Res Function(_AdminFeedbackDetailsResponse) then) =
      __$AdminFeedbackDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$AdminFeedbackDetailsResponseCopyWithImpl<$Res>
    extends _$AdminFeedbackDetailsResponseCopyWithImpl<$Res>
    implements _$AdminFeedbackDetailsResponseCopyWith<$Res> {
  __$AdminFeedbackDetailsResponseCopyWithImpl(
      _AdminFeedbackDetailsResponse _value,
      $Res Function(_AdminFeedbackDetailsResponse) _then)
      : super(_value, (v) => _then(v as _AdminFeedbackDetailsResponse));

  @override
  _AdminFeedbackDetailsResponse get _value =>
      super._value as _AdminFeedbackDetailsResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_AdminFeedbackDetailsResponse(
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
class _$_AdminFeedbackDetailsResponse implements _AdminFeedbackDetailsResponse {
  _$_AdminFeedbackDetailsResponse({this.meta, this.data});

  factory _$_AdminFeedbackDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AdminFeedbackDetailsResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'AdminFeedbackDetailsResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminFeedbackDetailsResponse &&
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
  _$AdminFeedbackDetailsResponseCopyWith<_AdminFeedbackDetailsResponse>
      get copyWith => __$AdminFeedbackDetailsResponseCopyWithImpl<
          _AdminFeedbackDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminFeedbackDetailsResponseToJson(this);
  }
}

abstract class _AdminFeedbackDetailsResponse
    implements AdminFeedbackDetailsResponse {
  factory _AdminFeedbackDetailsResponse({final Meta? meta, final Data? data}) =
      _$_AdminFeedbackDetailsResponse;

  factory _AdminFeedbackDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_AdminFeedbackDetailsResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdminFeedbackDetailsResponseCopyWith<_AdminFeedbackDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
