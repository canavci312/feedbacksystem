// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lookup_roles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LookupRolesResponse _$LookupRolesResponseFromJson(Map<String, dynamic> json) {
  return _LookupRolesResponse.fromJson(json);
}

/// @nodoc
mixin _$LookupRolesResponse {
  List<MyList>? get list => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LookupRolesResponseCopyWith<LookupRolesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LookupRolesResponseCopyWith<$Res> {
  factory $LookupRolesResponseCopyWith(
          LookupRolesResponse value, $Res Function(LookupRolesResponse) then) =
      _$LookupRolesResponseCopyWithImpl<$Res>;
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class _$LookupRolesResponseCopyWithImpl<$Res>
    implements $LookupRolesResponseCopyWith<$Res> {
  _$LookupRolesResponseCopyWithImpl(this._value, this._then);

  final LookupRolesResponse _value;
  // ignore: unused_field
  final $Res Function(LookupRolesResponse) _then;

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
abstract class _$LookupRolesResponseCopyWith<$Res>
    implements $LookupRolesResponseCopyWith<$Res> {
  factory _$LookupRolesResponseCopyWith(_LookupRolesResponse value,
          $Res Function(_LookupRolesResponse) then) =
      __$LookupRolesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class __$LookupRolesResponseCopyWithImpl<$Res>
    extends _$LookupRolesResponseCopyWithImpl<$Res>
    implements _$LookupRolesResponseCopyWith<$Res> {
  __$LookupRolesResponseCopyWithImpl(
      _LookupRolesResponse _value, $Res Function(_LookupRolesResponse) _then)
      : super(_value, (v) => _then(v as _LookupRolesResponse));

  @override
  _LookupRolesResponse get _value => super._value as _LookupRolesResponse;

  @override
  $Res call({
    Object? list = freezed,
    Object? count = freezed,
  }) {
    return _then(_LookupRolesResponse(
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
class _$_LookupRolesResponse implements _LookupRolesResponse {
  _$_LookupRolesResponse({final List<MyList>? list, this.count}) : _list = list;

  factory _$_LookupRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LookupRolesResponseFromJson(json);

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
    return 'LookupRolesResponse(list: $list, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LookupRolesResponse &&
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
  _$LookupRolesResponseCopyWith<_LookupRolesResponse> get copyWith =>
      __$LookupRolesResponseCopyWithImpl<_LookupRolesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LookupRolesResponseToJson(this);
  }
}

abstract class _LookupRolesResponse implements LookupRolesResponse {
  factory _LookupRolesResponse({final List<MyList>? list, final int? count}) =
      _$_LookupRolesResponse;

  factory _LookupRolesResponse.fromJson(Map<String, dynamic> json) =
      _$_LookupRolesResponse.fromJson;

  @override
  List<MyList>? get list => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LookupRolesResponseCopyWith<_LookupRolesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
