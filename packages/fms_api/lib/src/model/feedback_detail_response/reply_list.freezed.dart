// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyList _$ReplyListFromJson(Map<String, dynamic> json) {
  return _ReplyList.fromJson(json);
}

/// @nodoc
mixin _$ReplyList {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  int? get userRoleId => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyListCopyWith<ReplyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyListCopyWith<$Res> {
  factory $ReplyListCopyWith(ReplyList value, $Res Function(ReplyList) then) =
      _$ReplyListCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? userId,
      String? text,
      String? userName,
      int? userRoleId,
      String? userRole,
      String? companyName,
      DateTime? createdAt});
}

/// @nodoc
class _$ReplyListCopyWithImpl<$Res> implements $ReplyListCopyWith<$Res> {
  _$ReplyListCopyWithImpl(this._value, this._then);

  final ReplyList _value;
  // ignore: unused_field
  final $Res Function(ReplyList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? text = freezed,
    Object? userName = freezed,
    Object? userRoleId = freezed,
    Object? userRole = freezed,
    Object? companyName = freezed,
    Object? createdAt = freezed,
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
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleId: userRoleId == freezed
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ReplyListCopyWith<$Res> implements $ReplyListCopyWith<$Res> {
  factory _$ReplyListCopyWith(
          _ReplyList value, $Res Function(_ReplyList) then) =
      __$ReplyListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? userId,
      String? text,
      String? userName,
      int? userRoleId,
      String? userRole,
      String? companyName,
      DateTime? createdAt});
}

/// @nodoc
class __$ReplyListCopyWithImpl<$Res> extends _$ReplyListCopyWithImpl<$Res>
    implements _$ReplyListCopyWith<$Res> {
  __$ReplyListCopyWithImpl(_ReplyList _value, $Res Function(_ReplyList) _then)
      : super(_value, (v) => _then(v as _ReplyList));

  @override
  _ReplyList get _value => super._value as _ReplyList;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? text = freezed,
    Object? userName = freezed,
    Object? userRoleId = freezed,
    Object? userRole = freezed,
    Object? companyName = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ReplyList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleId: userRoleId == freezed
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyList implements _ReplyList {
  _$_ReplyList(
      {this.id,
      this.userId,
      this.text,
      this.userName,
      this.userRoleId,
      this.userRole,
      this.companyName,
      this.createdAt});

  factory _$_ReplyList.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyListFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? text;
  @override
  final String? userName;
  @override
  final int? userRoleId;
  @override
  final String? userRole;
  @override
  final String? companyName;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ReplyList(id: $id, userId: $userId, text: $text, userName: $userName, userRoleId: $userRoleId, userRole: $userRole, companyName: $companyName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReplyList &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.userRoleId, userRoleId) &&
            const DeepCollectionEquality().equals(other.userRole, userRole) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userRoleId),
      const DeepCollectionEquality().hash(userRole),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$ReplyListCopyWith<_ReplyList> get copyWith =>
      __$ReplyListCopyWithImpl<_ReplyList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyListToJson(this);
  }
}

abstract class _ReplyList implements ReplyList {
  factory _ReplyList(
      {final int? id,
      final int? userId,
      final String? text,
      final String? userName,
      final int? userRoleId,
      final String? userRole,
      final String? companyName,
      final DateTime? createdAt}) = _$_ReplyList;

  factory _ReplyList.fromJson(Map<String, dynamic> json) =
      _$_ReplyList.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  int? get userRoleId => throw _privateConstructorUsedError;
  @override
  String? get userRole => throw _privateConstructorUsedError;
  @override
  String? get companyName => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReplyListCopyWith<_ReplyList> get copyWith =>
      throw _privateConstructorUsedError;
}
