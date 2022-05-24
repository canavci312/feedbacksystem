// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityDistribution _$CityDistributionFromJson(Map<String, dynamic> json) {
  return _CityDistribution.fromJson(json);
}

/// @nodoc
mixin _$CityDistribution {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDistributionCopyWith<CityDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDistributionCopyWith<$Res> {
  factory $CityDistributionCopyWith(
          CityDistribution value, $Res Function(CityDistribution) then) =
      _$CityDistributionCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$CityDistributionCopyWithImpl<$Res>
    implements $CityDistributionCopyWith<$Res> {
  _$CityDistributionCopyWithImpl(this._value, this._then);

  final CityDistribution _value;
  // ignore: unused_field
  final $Res Function(CityDistribution) _then;

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
abstract class _$CityDistributionCopyWith<$Res>
    implements $CityDistributionCopyWith<$Res> {
  factory _$CityDistributionCopyWith(
          _CityDistribution value, $Res Function(_CityDistribution) then) =
      __$CityDistributionCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$CityDistributionCopyWithImpl<$Res>
    extends _$CityDistributionCopyWithImpl<$Res>
    implements _$CityDistributionCopyWith<$Res> {
  __$CityDistributionCopyWithImpl(
      _CityDistribution _value, $Res Function(_CityDistribution) _then)
      : super(_value, (v) => _then(v as _CityDistribution));

  @override
  _CityDistribution get _value => super._value as _CityDistribution;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_CityDistribution(
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
class _$_CityDistribution implements _CityDistribution {
  _$_CityDistribution({this.id, this.name, this.count});

  factory _$_CityDistribution.fromJson(Map<String, dynamic> json) =>
      _$$_CityDistributionFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'CityDistribution(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityDistribution &&
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
  _$CityDistributionCopyWith<_CityDistribution> get copyWith =>
      __$CityDistributionCopyWithImpl<_CityDistribution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityDistributionToJson(this);
  }
}

abstract class _CityDistribution implements CityDistribution {
  factory _CityDistribution(
      {final int? id,
      final String? name,
      final int? count}) = _$_CityDistribution;

  factory _CityDistribution.fromJson(Map<String, dynamic> json) =
      _$_CityDistribution.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityDistributionCopyWith<_CityDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}
