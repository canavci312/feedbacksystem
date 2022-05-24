// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education_distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationDistribution _$EducationDistributionFromJson(
    Map<String, dynamic> json) {
  return _EducationDistribution.fromJson(json);
}

/// @nodoc
mixin _$EducationDistribution {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationDistributionCopyWith<EducationDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationDistributionCopyWith<$Res> {
  factory $EducationDistributionCopyWith(EducationDistribution value,
          $Res Function(EducationDistribution) then) =
      _$EducationDistributionCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$EducationDistributionCopyWithImpl<$Res>
    implements $EducationDistributionCopyWith<$Res> {
  _$EducationDistributionCopyWithImpl(this._value, this._then);

  final EducationDistribution _value;
  // ignore: unused_field
  final $Res Function(EducationDistribution) _then;

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
abstract class _$EducationDistributionCopyWith<$Res>
    implements $EducationDistributionCopyWith<$Res> {
  factory _$EducationDistributionCopyWith(_EducationDistribution value,
          $Res Function(_EducationDistribution) then) =
      __$EducationDistributionCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$EducationDistributionCopyWithImpl<$Res>
    extends _$EducationDistributionCopyWithImpl<$Res>
    implements _$EducationDistributionCopyWith<$Res> {
  __$EducationDistributionCopyWithImpl(_EducationDistribution _value,
      $Res Function(_EducationDistribution) _then)
      : super(_value, (v) => _then(v as _EducationDistribution));

  @override
  _EducationDistribution get _value => super._value as _EducationDistribution;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_EducationDistribution(
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
class _$_EducationDistribution implements _EducationDistribution {
  _$_EducationDistribution({this.id, this.name, this.count});

  factory _$_EducationDistribution.fromJson(Map<String, dynamic> json) =>
      _$$_EducationDistributionFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'EducationDistribution(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EducationDistribution &&
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
  _$EducationDistributionCopyWith<_EducationDistribution> get copyWith =>
      __$EducationDistributionCopyWithImpl<_EducationDistribution>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationDistributionToJson(this);
  }
}

abstract class _EducationDistribution implements EducationDistribution {
  factory _EducationDistribution(
      {final int? id,
      final String? name,
      final int? count}) = _$_EducationDistribution;

  factory _EducationDistribution.fromJson(Map<String, dynamic> json) =
      _$_EducationDistribution.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EducationDistributionCopyWith<_EducationDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}
