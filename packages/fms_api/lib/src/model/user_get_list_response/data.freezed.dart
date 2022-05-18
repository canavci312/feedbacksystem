// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get totalCount => throw _privateConstructorUsedError;
  int? get filteredCount => throw _privateConstructorUsedError;
  int? get objectsPerPage => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  List<UserList>? get userList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? totalCount,
      int? filteredCount,
      int? objectsPerPage,
      int? pageNumber,
      List<UserList>? userList});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filteredCount = freezed,
    Object? objectsPerPage = freezed,
    Object? pageNumber = freezed,
    Object? userList = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filteredCount: filteredCount == freezed
          ? _value.filteredCount
          : filteredCount // ignore: cast_nullable_to_non_nullable
              as int?,
      objectsPerPage: objectsPerPage == freezed
          ? _value.objectsPerPage
          : objectsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userList: userList == freezed
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserList>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalCount,
      int? filteredCount,
      int? objectsPerPage,
      int? pageNumber,
      List<UserList>? userList});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filteredCount = freezed,
    Object? objectsPerPage = freezed,
    Object? pageNumber = freezed,
    Object? userList = freezed,
  }) {
    return _then(_Data(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filteredCount: filteredCount == freezed
          ? _value.filteredCount
          : filteredCount // ignore: cast_nullable_to_non_nullable
              as int?,
      objectsPerPage: objectsPerPage == freezed
          ? _value.objectsPerPage
          : objectsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userList: userList == freezed
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  _$_Data(
      {this.totalCount,
      this.filteredCount,
      this.objectsPerPage,
      this.pageNumber,
      final List<UserList>? userList})
      : _userList = userList;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? totalCount;
  @override
  final int? filteredCount;
  @override
  final int? objectsPerPage;
  @override
  final int? pageNumber;
  final List<UserList>? _userList;
  @override
  List<UserList>? get userList {
    final value = _userList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(totalCount: $totalCount, filteredCount: $filteredCount, objectsPerPage: $objectsPerPage, pageNumber: $pageNumber, userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.filteredCount, filteredCount) &&
            const DeepCollectionEquality()
                .equals(other.objectsPerPage, objectsPerPage) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality().equals(other.userList, userList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(filteredCount),
      const DeepCollectionEquality().hash(objectsPerPage),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(userList));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final int? totalCount,
      final int? filteredCount,
      final int? objectsPerPage,
      final int? pageNumber,
      final List<UserList>? userList}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get totalCount => throw _privateConstructorUsedError;
  @override
  int? get filteredCount => throw _privateConstructorUsedError;
  @override
  int? get objectsPerPage => throw _privateConstructorUsedError;
  @override
  int? get pageNumber => throw _privateConstructorUsedError;
  @override
  List<UserList>? get userList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
