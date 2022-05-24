// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedbacks_per_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbacksPerProduct _$FeedbacksPerProductFromJson(Map<String, dynamic> json) {
  return _FeedbacksPerProduct.fromJson(json);
}

/// @nodoc
mixin _$FeedbacksPerProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbacksPerProductCopyWith<FeedbacksPerProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksPerProductCopyWith<$Res> {
  factory $FeedbacksPerProductCopyWith(
          FeedbacksPerProduct value, $Res Function(FeedbacksPerProduct) then) =
      _$FeedbacksPerProductCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class _$FeedbacksPerProductCopyWithImpl<$Res>
    implements $FeedbacksPerProductCopyWith<$Res> {
  _$FeedbacksPerProductCopyWithImpl(this._value, this._then);

  final FeedbacksPerProduct _value;
  // ignore: unused_field
  final $Res Function(FeedbacksPerProduct) _then;

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
abstract class _$FeedbacksPerProductCopyWith<$Res>
    implements $FeedbacksPerProductCopyWith<$Res> {
  factory _$FeedbacksPerProductCopyWith(_FeedbacksPerProduct value,
          $Res Function(_FeedbacksPerProduct) then) =
      __$FeedbacksPerProductCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? count});
}

/// @nodoc
class __$FeedbacksPerProductCopyWithImpl<$Res>
    extends _$FeedbacksPerProductCopyWithImpl<$Res>
    implements _$FeedbacksPerProductCopyWith<$Res> {
  __$FeedbacksPerProductCopyWithImpl(
      _FeedbacksPerProduct _value, $Res Function(_FeedbacksPerProduct) _then)
      : super(_value, (v) => _then(v as _FeedbacksPerProduct));

  @override
  _FeedbacksPerProduct get _value => super._value as _FeedbacksPerProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? count = freezed,
  }) {
    return _then(_FeedbacksPerProduct(
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
class _$_FeedbacksPerProduct implements _FeedbacksPerProduct {
  _$_FeedbacksPerProduct({this.id, this.name, this.count});

  factory _$_FeedbacksPerProduct.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbacksPerProductFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? count;

  @override
  String toString() {
    return 'FeedbacksPerProduct(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbacksPerProduct &&
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
  _$FeedbacksPerProductCopyWith<_FeedbacksPerProduct> get copyWith =>
      __$FeedbacksPerProductCopyWithImpl<_FeedbacksPerProduct>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbacksPerProductToJson(this);
  }
}

abstract class _FeedbacksPerProduct implements FeedbacksPerProduct {
  factory _FeedbacksPerProduct(
      {final int? id,
      final String? name,
      final int? count}) = _$_FeedbacksPerProduct;

  factory _FeedbacksPerProduct.fromJson(Map<String, dynamic> json) =
      _$_FeedbacksPerProduct.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbacksPerProductCopyWith<_FeedbacksPerProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
