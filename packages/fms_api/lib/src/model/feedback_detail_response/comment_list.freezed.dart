// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentList _$CommentListFromJson(Map<String, dynamic> json) {
  return _CommentList.fromJson(json);
}

/// @nodoc
mixin _$CommentList {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  dynamic get parentCommentId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get dislikeCount => throw _privateConstructorUsedError;
  bool? get isAnonym => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<ChildComment>? get childComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentListCopyWith<CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListCopyWith<$Res> {
  factory $CommentListCopyWith(
          CommentList value, $Res Function(CommentList) then) =
      _$CommentListCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? userId,
      String? userName,
      dynamic parentCommentId,
      String? text,
      int? likeCount,
      int? dislikeCount,
      bool? isAnonym,
      DateTime? createdAt,
      List<ChildComment>? childComment});
}

/// @nodoc
class _$CommentListCopyWithImpl<$Res> implements $CommentListCopyWith<$Res> {
  _$CommentListCopyWithImpl(this._value, this._then);

  final CommentList _value;
  // ignore: unused_field
  final $Res Function(CommentList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? parentCommentId = freezed,
    Object? text = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? isAnonym = freezed,
    Object? createdAt = freezed,
    Object? childComment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      childComment: childComment == freezed
          ? _value.childComment
          : childComment // ignore: cast_nullable_to_non_nullable
              as List<ChildComment>?,
    ));
  }
}

/// @nodoc
abstract class _$CommentListCopyWith<$Res>
    implements $CommentListCopyWith<$Res> {
  factory _$CommentListCopyWith(
          _CommentList value, $Res Function(_CommentList) then) =
      __$CommentListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? userId,
      String? userName,
      dynamic parentCommentId,
      String? text,
      int? likeCount,
      int? dislikeCount,
      bool? isAnonym,
      DateTime? createdAt,
      List<ChildComment>? childComment});
}

/// @nodoc
class __$CommentListCopyWithImpl<$Res> extends _$CommentListCopyWithImpl<$Res>
    implements _$CommentListCopyWith<$Res> {
  __$CommentListCopyWithImpl(
      _CommentList _value, $Res Function(_CommentList) _then)
      : super(_value, (v) => _then(v as _CommentList));

  @override
  _CommentList get _value => super._value as _CommentList;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? parentCommentId = freezed,
    Object? text = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? isAnonym = freezed,
    Object? createdAt = freezed,
    Object? childComment = freezed,
  }) {
    return _then(_CommentList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnonym: isAnonym == freezed
          ? _value.isAnonym
          : isAnonym // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      childComment: childComment == freezed
          ? _value.childComment
          : childComment // ignore: cast_nullable_to_non_nullable
              as List<ChildComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentList implements _CommentList {
  _$_CommentList(
      {this.id,
      this.userId,
      this.userName,
      this.parentCommentId,
      this.text,
      this.likeCount,
      this.dislikeCount,
      this.isAnonym,
      this.createdAt,
      final List<ChildComment>? childComment})
      : _childComment = childComment;

  factory _$_CommentList.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? userName;
  @override
  final dynamic parentCommentId;
  @override
  final String? text;
  @override
  final int? likeCount;
  @override
  final int? dislikeCount;
  @override
  final bool? isAnonym;
  @override
  final DateTime? createdAt;
  final List<ChildComment>? _childComment;
  @override
  List<ChildComment>? get childComment {
    final value = _childComment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentList(id: $id, userId: $userId, userName: $userName, parentCommentId: $parentCommentId, text: $text, likeCount: $likeCount, dislikeCount: $dislikeCount, isAnonym: $isAnonym, createdAt: $createdAt, childComment: $childComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentList &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.parentCommentId, parentCommentId) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.dislikeCount, dislikeCount) &&
            const DeepCollectionEquality().equals(other.isAnonym, isAnonym) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.childComment, childComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(parentCommentId),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(dislikeCount),
      const DeepCollectionEquality().hash(isAnonym),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(childComment));

  @JsonKey(ignore: true)
  @override
  _$CommentListCopyWith<_CommentList> get copyWith =>
      __$CommentListCopyWithImpl<_CommentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListToJson(this);
  }
}

abstract class _CommentList implements CommentList {
  factory _CommentList(
      {final int? id,
      final int? userId,
      final String? userName,
      final dynamic parentCommentId,
      final String? text,
      final int? likeCount,
      final int? dislikeCount,
      final bool? isAnonym,
      final DateTime? createdAt,
      final List<ChildComment>? childComment}) = _$_CommentList;

  factory _CommentList.fromJson(Map<String, dynamic> json) =
      _$_CommentList.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  dynamic get parentCommentId => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  int? get likeCount => throw _privateConstructorUsedError;
  @override
  int? get dislikeCount => throw _privateConstructorUsedError;
  @override
  bool? get isAnonym => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  List<ChildComment>? get childComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentListCopyWith<_CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}
