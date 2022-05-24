// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_age_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountAgeInterval _$AccountAgeIntervalFromJson(Map<String, dynamic> json) {
  return _AccountAgeInterval.fromJson(json);
}

/// @nodoc
mixin _$AccountAgeInterval {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountAgeIntervalCopyWith<AccountAgeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountAgeIntervalCopyWith<$Res> {
  factory $AccountAgeIntervalCopyWith(
          AccountAgeInterval value, $Res Function(AccountAgeInterval) then) =
      _$AccountAgeIntervalCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$AccountAgeIntervalCopyWithImpl<$Res>
    implements $AccountAgeIntervalCopyWith<$Res> {
  _$AccountAgeIntervalCopyWithImpl(this._value, this._then);

  final AccountAgeInterval _value;
  // ignore: unused_field
  final $Res Function(AccountAgeInterval) _then;

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
abstract class _$AccountAgeIntervalCopyWith<$Res>
    implements $AccountAgeIntervalCopyWith<$Res> {
  factory _$AccountAgeIntervalCopyWith(
          _AccountAgeInterval value, $Res Function(_AccountAgeInterval) then) =
      __$AccountAgeIntervalCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$AccountAgeIntervalCopyWithImpl<$Res>
    extends _$AccountAgeIntervalCopyWithImpl<$Res>
    implements _$AccountAgeIntervalCopyWith<$Res> {
  __$AccountAgeIntervalCopyWithImpl(
      _AccountAgeInterval _value, $Res Function(_AccountAgeInterval) _then)
      : super(_value, (v) => _then(v as _AccountAgeInterval));

  @override
  _AccountAgeInterval get _value => super._value as _AccountAgeInterval;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_AccountAgeInterval(
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
class _$_AccountAgeInterval implements _AccountAgeInterval {
  _$_AccountAgeInterval({this.id, this.name, this.count});

  factory _$_AccountAgeInterval.fromJson(Map<String, dynamic> json) =>
      _$$_AccountAgeIntervalFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'AccountAgeInterval(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountAgeInterval &&
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
  _$AccountAgeIntervalCopyWith<_AccountAgeInterval> get copyWith =>
      __$AccountAgeIntervalCopyWithImpl<_AccountAgeInterval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountAgeIntervalToJson(this);
  }
}

abstract class _AccountAgeInterval implements AccountAgeInterval {
  factory _AccountAgeInterval(
      {final int? id,
      final String? name,
      final int? count}) = _$_AccountAgeInterval;

  factory _AccountAgeInterval.fromJson(Map<String, dynamic> json) =
      _$_AccountAgeInterval.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountAgeIntervalCopyWith<_AccountAgeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
