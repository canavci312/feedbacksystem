// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedbacks_per_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbacksPerType _$FeedbacksPerTypeFromJson(Map<String, dynamic> json) {
  return _FeedbacksPerType.fromJson(json);
}

/// @nodoc
mixin _$FeedbacksPerType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbacksPerTypeCopyWith<FeedbacksPerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksPerTypeCopyWith<$Res> {
  factory $FeedbacksPerTypeCopyWith(
          FeedbacksPerType value, $Res Function(FeedbacksPerType) then) =
      _$FeedbacksPerTypeCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$FeedbacksPerTypeCopyWithImpl<$Res>
    implements $FeedbacksPerTypeCopyWith<$Res> {
  _$FeedbacksPerTypeCopyWithImpl(this._value, this._then);

  final FeedbacksPerType _value;
  // ignore: unused_field
  final $Res Function(FeedbacksPerType) _then;

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
abstract class _$FeedbacksPerTypeCopyWith<$Res>
    implements $FeedbacksPerTypeCopyWith<$Res> {
  factory _$FeedbacksPerTypeCopyWith(
          _FeedbacksPerType value, $Res Function(_FeedbacksPerType) then) =
      __$FeedbacksPerTypeCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$FeedbacksPerTypeCopyWithImpl<$Res>
    extends _$FeedbacksPerTypeCopyWithImpl<$Res>
    implements _$FeedbacksPerTypeCopyWith<$Res> {
  __$FeedbacksPerTypeCopyWithImpl(
      _FeedbacksPerType _value, $Res Function(_FeedbacksPerType) _then)
      : super(_value, (v) => _then(v as _FeedbacksPerType));

  @override
  _FeedbacksPerType get _value => super._value as _FeedbacksPerType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_FeedbacksPerType(
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
class _$_FeedbacksPerType implements _FeedbacksPerType {
  _$_FeedbacksPerType({this.id, this.name, this.count});

  factory _$_FeedbacksPerType.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbacksPerTypeFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'FeedbacksPerType(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbacksPerType &&
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
  _$FeedbacksPerTypeCopyWith<_FeedbacksPerType> get copyWith =>
      __$FeedbacksPerTypeCopyWithImpl<_FeedbacksPerType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbacksPerTypeToJson(this);
  }
}

abstract class _FeedbacksPerType implements FeedbacksPerType {
  factory _FeedbacksPerType(
      {final int? id,
      final String? name,
      final int? count}) = _$_FeedbacksPerType;

  factory _FeedbacksPerType.fromJson(Map<String, dynamic> json) =
      _$_FeedbacksPerType.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbacksPerTypeCopyWith<_FeedbacksPerType> get copyWith =>
      throw _privateConstructorUsedError;
}
