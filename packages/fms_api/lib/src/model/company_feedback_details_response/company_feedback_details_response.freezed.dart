// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_feedback_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyFeedbackDetailsResponse _$CompanyFeedbackDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyFeedbackDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyFeedbackDetailsResponse {
  Meta? get meta => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyFeedbackDetailsResponseCopyWith<CompanyFeedbackDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyFeedbackDetailsResponseCopyWith<$Res> {
  factory $CompanyFeedbackDetailsResponseCopyWith(
          CompanyFeedbackDetailsResponse value,
          $Res Function(CompanyFeedbackDetailsResponse) then) =
      _$CompanyFeedbackDetailsResponseCopyWithImpl<$Res>;
  $Res call({Meta? meta, Data? data});

  $MetaCopyWith<$Res>? get meta;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CompanyFeedbackDetailsResponseCopyWithImpl<$Res>
    implements $CompanyFeedbackDetailsResponseCopyWith<$Res> {
  _$CompanyFeedbackDetailsResponseCopyWithImpl(this._value, this._then);

  final CompanyFeedbackDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(CompanyFeedbackDetailsResponse) _then;

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
abstract class _$CompanyFeedbackDetailsResponseCopyWith<$Res>
    implements $CompanyFeedbackDetailsResponseCopyWith<$Res> {
  factory _$CompanyFeedbackDetailsResponseCopyWith(
          _CompanyFeedbackDetailsResponse value,
          $Res Function(_CompanyFeedbackDetailsResponse) then) =
      __$CompanyFeedbackDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, Data? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CompanyFeedbackDetailsResponseCopyWithImpl<$Res>
    extends _$CompanyFeedbackDetailsResponseCopyWithImpl<$Res>
    implements _$CompanyFeedbackDetailsResponseCopyWith<$Res> {
  __$CompanyFeedbackDetailsResponseCopyWithImpl(
      _CompanyFeedbackDetailsResponse _value,
      $Res Function(_CompanyFeedbackDetailsResponse) _then)
      : super(_value, (v) => _then(v as _CompanyFeedbackDetailsResponse));

  @override
  _CompanyFeedbackDetailsResponse get _value =>
      super._value as _CompanyFeedbackDetailsResponse;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_CompanyFeedbackDetailsResponse(
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
class _$_CompanyFeedbackDetailsResponse
    implements _CompanyFeedbackDetailsResponse {
  _$_CompanyFeedbackDetailsResponse({this.meta, this.data});

  factory _$_CompanyFeedbackDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_CompanyFeedbackDetailsResponseFromJson(json);

  @override
  final Meta? meta;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CompanyFeedbackDetailsResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyFeedbackDetailsResponse &&
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
  _$CompanyFeedbackDetailsResponseCopyWith<_CompanyFeedbackDetailsResponse>
      get copyWith => __$CompanyFeedbackDetailsResponseCopyWithImpl<
          _CompanyFeedbackDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyFeedbackDetailsResponseToJson(this);
  }
}

abstract class _CompanyFeedbackDetailsResponse
    implements CompanyFeedbackDetailsResponse {
  factory _CompanyFeedbackDetailsResponse(
      {final Meta? meta, final Data? data}) = _$_CompanyFeedbackDetailsResponse;

  factory _CompanyFeedbackDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_CompanyFeedbackDetailsResponse.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompanyFeedbackDetailsResponseCopyWith<_CompanyFeedbackDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
