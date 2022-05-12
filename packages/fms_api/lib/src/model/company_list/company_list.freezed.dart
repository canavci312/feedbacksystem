// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyList _$CompanyListFromJson(Map<String, dynamic> json) {
  return _CompanyList.fromJson(json);
}

/// @nodoc
mixin _$CompanyList {
  List<MyList>? get list => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListCopyWith<CompanyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListCopyWith<$Res> {
  factory $CompanyListCopyWith(
          CompanyList value, $Res Function(CompanyList) then) =
      _$CompanyListCopyWithImpl<$Res>;
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class _$CompanyListCopyWithImpl<$Res> implements $CompanyListCopyWith<$Res> {
  _$CompanyListCopyWithImpl(this._value, this._then);

  final CompanyList _value;
  // ignore: unused_field
  final $Res Function(CompanyList) _then;

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
abstract class _$CompanyListCopyWith<$Res>
    implements $CompanyListCopyWith<$Res> {
  factory _$CompanyListCopyWith(
          _CompanyList value, $Res Function(_CompanyList) then) =
      __$CompanyListCopyWithImpl<$Res>;
  @override
  $Res call({List<MyList>? list, int? count});
}

/// @nodoc
class __$CompanyListCopyWithImpl<$Res> extends _$CompanyListCopyWithImpl<$Res>
    implements _$CompanyListCopyWith<$Res> {
  __$CompanyListCopyWithImpl(
      _CompanyList _value, $Res Function(_CompanyList) _then)
      : super(_value, (v) => _then(v as _CompanyList));

  @override
  _CompanyList get _value => super._value as _CompanyList;

  @override
  $Res call({
    Object? list = freezed,
    Object? count = freezed,
  }) {
    return _then(_CompanyList(
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
class _$_CompanyList implements _CompanyList {
  _$_CompanyList({final List<MyList>? list, this.count}) : _list = list;

  factory _$_CompanyList.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyListFromJson(json);

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
    return 'CompanyList(list: $list, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyList &&
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
  _$CompanyListCopyWith<_CompanyList> get copyWith =>
      __$CompanyListCopyWithImpl<_CompanyList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListToJson(this);
  }
}

abstract class _CompanyList implements CompanyList {
  factory _CompanyList({final List<MyList>? list, final int? count}) =
      _$_CompanyList;

  factory _CompanyList.fromJson(Map<String, dynamic> json) =
      _$_CompanyList.fromJson;

  @override
  List<MyList>? get list => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompanyListCopyWith<_CompanyList> get copyWith =>
      throw _privateConstructorUsedError;
}
