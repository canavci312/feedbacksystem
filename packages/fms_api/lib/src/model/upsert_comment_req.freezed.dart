// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upsert_comment_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpsertCommentRequest _$UpsertCommentRequestFromJson(Map<String, dynamic> json) {
  return _UpsertCommentRequest.fromJson(json);
}

/// @nodoc
mixin _$UpsertCommentRequest {
  int? get id => throw _privateConstructorUsedError;
  int? get feedbackId => throw _privateConstructorUsedError;
  int? get parentCommentId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  bool? get isAnonym => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpsertCommentRequestCopyWith<UpsertCommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertCommentRequestCopyWith<$Res> {
  factory $UpsertCommentRequestCopyWith(UpsertCommentRequest value,
          $Res Function(UpsertCommentRequest) then) =
      _$UpsertCommentRequestCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? feedbackId,
      int? parentCommentId,
      String? text,
      bool? isAnonym});
}

/// @nodoc
class _$UpsertCommentRequestCopyWithImpl<$Res>
    implements $UpsertCommentRequestCopyWith<$Res> {
  _$UpsertCommentRequestCopyWithImpl(this._value, this._then);

  final UpsertCommentRequest _value;
  // ignore: unused_field
  final $Res Function(UpsertCommentRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? feedbackId = freezed,
    Object? parentCommentId = freezed,
    Object? text = freezed,
    Object? isAnonym = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      feedbackId: feedbackId == freezed
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UpsertCommentRequestCopyWith<$Res>
    implements $UpsertCommentRequestCopyWith<$Res> {
  factory _$UpsertCommentRequestCopyWith(_UpsertCommentRequest value,
          $Res Function(_UpsertCommentRequest) then) =
      __$UpsertCommentRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? feedbackId,
      int? parentCommentId,
      String? text,
      bool? isAnonym});
}

/// @nodoc
class __$UpsertCommentRequestCopyWithImpl<$Res>
    extends _$UpsertCommentRequestCopyWithImpl<$Res>
    implements _$UpsertCommentRequestCopyWith<$Res> {
  __$UpsertCommentRequestCopyWithImpl(
      _UpsertCommentRequest _value, $Res Function(_UpsertCommentRequest) _then)
      : super(_value, (v) => _then(v as _UpsertCommentRequest));

  @override
  _UpsertCommentRequest get _value => super._value as _UpsertCommentRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? feedbackId = freezed,
    Object? parentCommentId = freezed,
    Object? text = freezed,
    Object? isAnonym = freezed,
  }) {
    return _then(_UpsertCommentRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      feedbackId: feedbackId == freezed
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_UpsertCommentRequest implements _UpsertCommentRequest {
  const _$_UpsertCommentRequest(
      {this.id,
      this.feedbackId,
      this.parentCommentId,
      this.text,
      this.isAnonym});

  factory _$_UpsertCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpsertCommentRequestFromJson(json);

  @override
  final int? id;
  @override
  final int? feedbackId;
  @override
  final int? parentCommentId;
  @override
  final String? text;
  @override
  final bool? isAnonym;

  @override
  String toString() {
    return 'UpsertCommentRequest(id: $id, feedbackId: $feedbackId, parentCommentId: $parentCommentId, text: $text, isAnonym: $isAnonym)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpsertCommentRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.feedbackId, feedbackId) &&
            const DeepCollectionEquality()
                .equals(other.parentCommentId, parentCommentId) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.isAnonym, isAnonym));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(feedbackId),
      const DeepCollectionEquality().hash(parentCommentId),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(isAnonym));

  @JsonKey(ignore: true)
  @override
  _$UpsertCommentRequestCopyWith<_UpsertCommentRequest> get copyWith =>
      __$UpsertCommentRequestCopyWithImpl<_UpsertCommentRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpsertCommentRequestToJson(this);
  }
}

abstract class _UpsertCommentRequest implements UpsertCommentRequest {
  const factory _UpsertCommentRequest(
      {final int? id,
      final int? feedbackId,
      final int? parentCommentId,
      final String? text,
      final bool? isAnonym}) = _$_UpsertCommentRequest;

  factory _UpsertCommentRequest.fromJson(Map<String, dynamic> json) =
      _$_UpsertCommentRequest.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get feedbackId => throw _privateConstructorUsedError;
  @override
  int? get parentCommentId => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  bool? get isAnonym => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpsertCommentRequestCopyWith<_UpsertCommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
