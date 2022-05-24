// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_age_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAgeInterval _$UserAgeIntervalFromJson(Map<String, dynamic> json) {
  return _UserAgeInterval.fromJson(json);
}

/// @nodoc
mixin _$UserAgeInterval {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAgeIntervalCopyWith<UserAgeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAgeIntervalCopyWith<$Res> {
  factory $UserAgeIntervalCopyWith(
          UserAgeInterval value, $Res Function(UserAgeInterval) then) =
      _$UserAgeIntervalCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$UserAgeIntervalCopyWithImpl<$Res>
    implements $UserAgeIntervalCopyWith<$Res> {
  _$UserAgeIntervalCopyWithImpl(this._value, this._then);

  final UserAgeInterval _value;
  // ignore: unused_field
  final $Res Function(UserAgeInterval) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserAgeIntervalCopyWith<$Res>
    implements $UserAgeIntervalCopyWith<$Res> {
  factory _$UserAgeIntervalCopyWith(
          _UserAgeInterval value, $Res Function(_UserAgeInterval) then) =
      __$UserAgeIntervalCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$UserAgeIntervalCopyWithImpl<$Res>
    extends _$UserAgeIntervalCopyWithImpl<$Res>
    implements _$UserAgeIntervalCopyWith<$Res> {
  __$UserAgeIntervalCopyWithImpl(
      _UserAgeInterval _value, $Res Function(_UserAgeInterval) _then)
      : super(_value, (v) => _then(v as _UserAgeInterval));

  @override
  _UserAgeInterval get _value => super._value as _UserAgeInterval;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_UserAgeInterval(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAgeInterval implements _UserAgeInterval {
  _$_UserAgeInterval({this.id, this.name, this.count});

  factory _$_UserAgeInterval.fromJson(Map<String, dynamic> json) =>
      _$$_UserAgeIntervalFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'UserAgeInterval(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAgeInterval &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$UserAgeIntervalCopyWith<_UserAgeInterval> get copyWith =>
      __$UserAgeIntervalCopyWithImpl<_UserAgeInterval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAgeIntervalToJson(this);
  }
}

abstract class _UserAgeInterval implements UserAgeInterval {
  factory _UserAgeInterval(
      {final int? id,
      final String? name,
      final int? count}) = _$_UserAgeInterval;

  factory _UserAgeInterval.fromJson(Map<String, dynamic> json) =
      _$_UserAgeInterval.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAgeIntervalCopyWith<_UserAgeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
