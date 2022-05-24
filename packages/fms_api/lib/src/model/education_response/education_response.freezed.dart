// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationResponse _$EducationResponseFromJson(Map<String, dynamic> json) {
  return _EducationResponse.fromJson(json);
}

/// @nodoc
mixin _$EducationResponse {
  List<MyList>? get list => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationResponseCopyWith<EducationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationResponseCopyWith<$Res> {
  factory $EducationResponseCopyWith(
          EducationResponse value, $Res Function(EducationResponse) then) =
      _$EducationResponseCopyWithImpl<$Res>;
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class _$EducationResponseCopyWithImpl<$Res>
    implements $EducationResponseCopyWith<$Res> {
  _$EducationResponseCopyWithImpl(this._value, this._then);

  final EducationResponse _value;
  // ignore: unused_field
  final $Res Function(EducationResponse) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MyList>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EducationResponseCopyWith<$Res>
    implements $EducationResponseCopyWith<$Res> {
  factory _$EducationResponseCopyWith(
          _EducationResponse value, $Res Function(_EducationResponse) then) =
      __$EducationResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class __$EducationResponseCopyWithImpl<$Res>
    extends _$EducationResponseCopyWithImpl<$Res>
    implements _$EducationResponseCopyWith<$Res> {
  __$EducationResponseCopyWithImpl(
      _EducationResponse _value, $Res Function(_EducationResponse) _then)
      : super(_value, (v) => _then(v as _EducationResponse));

  @override
  _EducationResponse get _value => super._value as _EducationResponse;

  @override
  $Res call({
    Object? list = freezed,
    Object? count = freezed,
  }) {
    return _then(_EducationResponse(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MyList>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationResponse implements _EducationResponse {
  _$_EducationResponse({final List<MyList>? list, this.count}) : _list = list;

  factory _$_EducationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EducationResponseFromJson(json);

  final List<MyList>? _list;
  @override
  List<MyList>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? count;

  @override
  String toString() {
    return 'EducationResponse(list: $list, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EducationResponse &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$EducationResponseCopyWith<_EducationResponse> get copyWith =>
      __$EducationResponseCopyWithImpl<_EducationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationResponseToJson(this);
  }
}

abstract class _EducationResponse implements EducationResponse {
  factory _EducationResponse({final List<MyList>? list, final int? count}) =
      _$_EducationResponse;

  factory _EducationResponse.fromJson(Map<String, dynamic> json) =
      _$_EducationResponse.fromJson;

  @override
  List<MyList>? get list => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EducationResponseCopyWith<_EducationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
