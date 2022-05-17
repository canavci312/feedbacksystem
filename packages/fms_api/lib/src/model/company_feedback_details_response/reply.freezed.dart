// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
mixin _$Reply {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  int? get userRoleId => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? userId,
      String? text,
      String? userName,
      int? userRoleId,
      String? userRole,
      String? companyName,
      String? createdAt});
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res> implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  final Reply _value;
  // ignore: unused_field
  final $Res Function(Reply) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReplyCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$ReplyCopyWith(_Reply value, $Res Function(_Reply) then) =
      __$ReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? userId,
      String? text,
      String? userName,
      int? userRoleId,
      String? userRole,
      String? companyName,
      String? createdAt});
}

/// @nodoc
class __$ReplyCopyWithImpl<$Res> extends _$ReplyCopyWithImpl<$Res>
    implements _$ReplyCopyWith<$Res> {
  __$ReplyCopyWithImpl(_Reply _value, $Res Function(_Reply) _then)
      : super(_value, (v) => _then(v as _Reply));

  @override
  _Reply get _value => super._value as _Reply;

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
    return _then(_Reply(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reply implements _Reply {
  const _$_Reply(
      {this.id,
      this.userId,
      this.text,
      this.userName,
      this.userRoleId,
      this.userRole,
      this.companyName,
      this.createdAt});

  factory _$_Reply.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyFromJson(json);

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
  final String? createdAt;

  @override
  String toString() {
    return 'Reply(id: $id, userId: $userId, text: $text, userName: $userName, userRoleId: $userRoleId, userRole: $userRole, companyName: $companyName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reply &&
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
  _$ReplyCopyWith<_Reply> get copyWith =>
      __$ReplyCopyWithImpl<_Reply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyToJson(this);
  }
}

abstract class _Reply implements Reply {
  const factory _Reply(
      {final int? id,
      final int? userId,
      final String? text,
      final String? userName,
      final int? userRoleId,
      final String? userRole,
      final String? companyName,
      final String? createdAt}) = _$_Reply;

  factory _Reply.fromJson(Map<String, dynamic> json) = _$_Reply.fromJson;

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
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReplyCopyWith<_Reply> get copyWith => throw _privateConstructorUsedError;
}
