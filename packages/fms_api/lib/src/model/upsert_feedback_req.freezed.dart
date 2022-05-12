// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upsert_feedback_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpsertFeedbackRequest _$UpsertFeedbackRequestFromJson(
    Map<String, dynamic> json) {
  return _UpsertFeedbackRequest.fromJson(json);
}

/// @nodoc
mixin _$UpsertFeedbackRequest {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  int? get typeId => throw _privateConstructorUsedError;
  int? get subTypeId => throw _privateConstructorUsedError;
  bool get isAnonym => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpsertFeedbackRequestCopyWith<UpsertFeedbackRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertFeedbackRequestCopyWith<$Res> {
  factory $UpsertFeedbackRequestCopyWith(UpsertFeedbackRequest value,
          $Res Function(UpsertFeedbackRequest) then) =
      _$UpsertFeedbackRequestCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      String text,
      int productId,
      int? typeId,
      int? subTypeId,
      bool isAnonym});
}

/// @nodoc
class _$UpsertFeedbackRequestCopyWithImpl<$Res>
    implements $UpsertFeedbackRequestCopyWith<$Res> {
  _$UpsertFeedbackRequestCopyWithImpl(this._value, this._then);

  final UpsertFeedbackRequest _value;
  // ignore: unused_field
  final $Res Function(UpsertFeedbackRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? productId = freezed,
    Object? typeId = freezed,
    Object? subTypeId = freezed,
    Object? isAnonym = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      subTypeId: subTypeId == freezed
          ? _value.subTypeId
          : subTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UpsertFeedbackRequestCopyWith<$Res>
    implements $UpsertFeedbackRequestCopyWith<$Res> {
  factory _$UpsertFeedbackRequestCopyWith(_UpsertFeedbackRequest value,
          $Res Function(_UpsertFeedbackRequest) then) =
      __$UpsertFeedbackRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      String text,
      int productId,
      int? typeId,
      int? subTypeId,
      bool isAnonym});
}

/// @nodoc
class __$UpsertFeedbackRequestCopyWithImpl<$Res>
    extends _$UpsertFeedbackRequestCopyWithImpl<$Res>
    implements _$UpsertFeedbackRequestCopyWith<$Res> {
  __$UpsertFeedbackRequestCopyWithImpl(_UpsertFeedbackRequest _value,
      $Res Function(_UpsertFeedbackRequest) _then)
      : super(_value, (v) => _then(v as _UpsertFeedbackRequest));

  @override
  _UpsertFeedbackRequest get _value => super._value as _UpsertFeedbackRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? productId = freezed,
    Object? typeId = freezed,
    Object? subTypeId = freezed,
    Object? isAnonym = freezed,
  }) {
    return _then(_UpsertFeedbackRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      subTypeId: subTypeId == freezed
          ? _value.subTypeId
          : subTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_UpsertFeedbackRequest implements _UpsertFeedbackRequest {
  const _$_UpsertFeedbackRequest(
      {this.id,
      required this.title,
      required this.text,
      required this.productId,
      this.typeId,
      this.subTypeId,
      required this.isAnonym});

  factory _$_UpsertFeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpsertFeedbackRequestFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String text;
  @override
  final int productId;
  @override
  final int? typeId;
  @override
  final int? subTypeId;
  @override
  final bool isAnonym;

  @override
  String toString() {
    return 'UpsertFeedbackRequest(id: $id, title: $title, text: $text, productId: $productId, typeId: $typeId, subTypeId: $subTypeId, isAnonym: $isAnonym)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpsertFeedbackRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            const DeepCollectionEquality().equals(other.subTypeId, subTypeId) &&
            const DeepCollectionEquality().equals(other.isAnonym, isAnonym));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(typeId),
      const DeepCollectionEquality().hash(subTypeId),
      const DeepCollectionEquality().hash(isAnonym));

  @JsonKey(ignore: true)
  @override
  _$UpsertFeedbackRequestCopyWith<_UpsertFeedbackRequest> get copyWith =>
      __$UpsertFeedbackRequestCopyWithImpl<_UpsertFeedbackRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpsertFeedbackRequestToJson(this);
  }
}

abstract class _UpsertFeedbackRequest implements UpsertFeedbackRequest {
  const factory _UpsertFeedbackRequest(
      {final int? id,
      required final String title,
      required final String text,
      required final int productId,
      final int? typeId,
      final int? subTypeId,
      required final bool isAnonym}) = _$_UpsertFeedbackRequest;

  factory _UpsertFeedbackRequest.fromJson(Map<String, dynamic> json) =
      _$_UpsertFeedbackRequest.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  int get productId => throw _privateConstructorUsedError;
  @override
  int? get typeId => throw _privateConstructorUsedError;
  @override
  int? get subTypeId => throw _privateConstructorUsedError;
  @override
  bool get isAnonym => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpsertFeedbackRequestCopyWith<_UpsertFeedbackRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
