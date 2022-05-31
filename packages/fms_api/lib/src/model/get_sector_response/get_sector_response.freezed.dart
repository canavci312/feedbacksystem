// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_sector_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSectorResponse _$GetSectorResponseFromJson(Map<String, dynamic> json) {
  return _GetSectorResponse.fromJson(json);
}

/// @nodoc
mixin _$GetSectorResponse {
  List<MyList>? get list => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSectorResponseCopyWith<GetSectorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSectorResponseCopyWith<$Res> {
  factory $GetSectorResponseCopyWith(
          GetSectorResponse value, $Res Function(GetSectorResponse) then) =
      _$GetSectorResponseCopyWithImpl<$Res>;
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class _$GetSectorResponseCopyWithImpl<$Res>
    implements $GetSectorResponseCopyWith<$Res> {
  _$GetSectorResponseCopyWithImpl(this._value, this._then);

  final GetSectorResponse _value;
  // ignore: unused_field
  final $Res Function(GetSectorResponse) _then;

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
abstract class _$GetSectorResponseCopyWith<$Res>
    implements $GetSectorResponseCopyWith<$Res> {
  factory _$GetSectorResponseCopyWith(
          _GetSectorResponse value, $Res Function(_GetSectorResponse) then) =
      __$GetSectorResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class __$GetSectorResponseCopyWithImpl<$Res>
    extends _$GetSectorResponseCopyWithImpl<$Res>
    implements _$GetSectorResponseCopyWith<$Res> {
  __$GetSectorResponseCopyWithImpl(
      _GetSectorResponse _value, $Res Function(_GetSectorResponse) _then)
      : super(_value, (v) => _then(v as _GetSectorResponse));

  @override
  _GetSectorResponse get _value => super._value as _GetSectorResponse;

  @override
  $Res call({
    Object? list = freezed,
    Object? count = freezed,
  }) {
    return _then(_GetSectorResponse(
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
class _$_GetSectorResponse implements _GetSectorResponse {
  _$_GetSectorResponse({final List<MyList>? list, this.count}) : _list = list;

  factory _$_GetSectorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetSectorResponseFromJson(json);

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
    return 'GetSectorResponse(list: $list, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSectorResponse &&
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
  _$GetSectorResponseCopyWith<_GetSectorResponse> get copyWith =>
      __$GetSectorResponseCopyWithImpl<_GetSectorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetSectorResponseToJson(this);
  }
}

abstract class _GetSectorResponse implements GetSectorResponse {
  factory _GetSectorResponse({final List<MyList>? list, final int? count}) =
      _$_GetSectorResponse;

  factory _GetSectorResponse.fromJson(Map<String, dynamic> json) =
      _$_GetSectorResponse.fromJson;

  @override
  List<MyList>? get list => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSectorResponseCopyWith<_GetSectorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
