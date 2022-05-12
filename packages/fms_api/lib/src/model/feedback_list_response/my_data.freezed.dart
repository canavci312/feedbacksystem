// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyData _$MyDataFromJson(Map<String, dynamic> json) {
  return _MyData.fromJson(json);
}

/// @nodoc
mixin _$MyData {
  int? get totalCount => throw _privateConstructorUsedError;
  int? get filteredCount => throw _privateConstructorUsedError;
  int? get objectsPerPage => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  List<PublicFeedbackList>? get publicFeedbackList =>
      throw _privateConstructorUsedError;
  List<AdminFeedbackList>? get adminFeedbackList =>
      throw _privateConstructorUsedError;
  List<CompanyFeedbackList>? get companyFeedbackList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyDataCopyWith<MyData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDataCopyWith<$Res> {
  factory $MyDataCopyWith(MyData value, $Res Function(MyData) then) =
      _$MyDataCopyWithImpl<$Res>;
  $Res call(
      {int? totalCount,
      int? filteredCount,
      int? objectsPerPage,
      int? pageNumber,
      List<PublicFeedbackList>? publicFeedbackList,
      List<AdminFeedbackList>? adminFeedbackList,
      List<CompanyFeedbackList>? companyFeedbackList});
}

/// @nodoc
class _$MyDataCopyWithImpl<$Res> implements $MyDataCopyWith<$Res> {
  _$MyDataCopyWithImpl(this._value, this._then);

  final MyData _value;
  // ignore: unused_field
  final $Res Function(MyData) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filteredCount = freezed,
    Object? objectsPerPage = freezed,
    Object? pageNumber = freezed,
    Object? publicFeedbackList = freezed,
    Object? adminFeedbackList = freezed,
    Object? companyFeedbackList = freezed,
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
      publicFeedbackList: publicFeedbackList == freezed
          ? _value.publicFeedbackList
          : publicFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<PublicFeedbackList>?,
      adminFeedbackList: adminFeedbackList == freezed
          ? _value.adminFeedbackList
          : adminFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<AdminFeedbackList>?,
      companyFeedbackList: companyFeedbackList == freezed
          ? _value.companyFeedbackList
          : companyFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<CompanyFeedbackList>?,
    ));
  }
}

/// @nodoc
abstract class _$MyDataCopyWith<$Res> implements $MyDataCopyWith<$Res> {
  factory _$MyDataCopyWith(_MyData value, $Res Function(_MyData) then) =
      __$MyDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalCount,
      int? filteredCount,
      int? objectsPerPage,
      int? pageNumber,
      List<PublicFeedbackList>? publicFeedbackList,
      List<AdminFeedbackList>? adminFeedbackList,
      List<CompanyFeedbackList>? companyFeedbackList});
}

/// @nodoc
class __$MyDataCopyWithImpl<$Res> extends _$MyDataCopyWithImpl<$Res>
    implements _$MyDataCopyWith<$Res> {
  __$MyDataCopyWithImpl(_MyData _value, $Res Function(_MyData) _then)
      : super(_value, (v) => _then(v as _MyData));

  @override
  _MyData get _value => super._value as _MyData;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filteredCount = freezed,
    Object? objectsPerPage = freezed,
    Object? pageNumber = freezed,
    Object? publicFeedbackList = freezed,
    Object? adminFeedbackList = freezed,
    Object? companyFeedbackList = freezed,
  }) {
    return _then(_MyData(
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
      publicFeedbackList: publicFeedbackList == freezed
          ? _value.publicFeedbackList
          : publicFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<PublicFeedbackList>?,
      adminFeedbackList: adminFeedbackList == freezed
          ? _value.adminFeedbackList
          : adminFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<AdminFeedbackList>?,
      companyFeedbackList: companyFeedbackList == freezed
          ? _value.companyFeedbackList
          : companyFeedbackList // ignore: cast_nullable_to_non_nullable
              as List<CompanyFeedbackList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyData implements _MyData {
  _$_MyData(
      {this.totalCount,
      this.filteredCount,
      this.objectsPerPage,
      this.pageNumber,
      final List<PublicFeedbackList>? publicFeedbackList,
      final List<AdminFeedbackList>? adminFeedbackList,
      final List<CompanyFeedbackList>? companyFeedbackList})
      : _publicFeedbackList = publicFeedbackList,
        _adminFeedbackList = adminFeedbackList,
        _companyFeedbackList = companyFeedbackList;

  factory _$_MyData.fromJson(Map<String, dynamic> json) =>
      _$$_MyDataFromJson(json);

  @override
  final int? totalCount;
  @override
  final int? filteredCount;
  @override
  final int? objectsPerPage;
  @override
  final int? pageNumber;
  final List<PublicFeedbackList>? _publicFeedbackList;
  @override
  List<PublicFeedbackList>? get publicFeedbackList {
    final value = _publicFeedbackList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdminFeedbackList>? _adminFeedbackList;
  @override
  List<AdminFeedbackList>? get adminFeedbackList {
    final value = _adminFeedbackList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CompanyFeedbackList>? _companyFeedbackList;
  @override
  List<CompanyFeedbackList>? get companyFeedbackList {
    final value = _companyFeedbackList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyData(totalCount: $totalCount, filteredCount: $filteredCount, objectsPerPage: $objectsPerPage, pageNumber: $pageNumber, publicFeedbackList: $publicFeedbackList, adminFeedbackList: $adminFeedbackList, companyFeedbackList: $companyFeedbackList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyData &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.filteredCount, filteredCount) &&
            const DeepCollectionEquality()
                .equals(other.objectsPerPage, objectsPerPage) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality()
                .equals(other.publicFeedbackList, publicFeedbackList) &&
            const DeepCollectionEquality()
                .equals(other.adminFeedbackList, adminFeedbackList) &&
            const DeepCollectionEquality()
                .equals(other.companyFeedbackList, companyFeedbackList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(filteredCount),
      const DeepCollectionEquality().hash(objectsPerPage),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(publicFeedbackList),
      const DeepCollectionEquality().hash(adminFeedbackList),
      const DeepCollectionEquality().hash(companyFeedbackList));

  @JsonKey(ignore: true)
  @override
  _$MyDataCopyWith<_MyData> get copyWith =>
      __$MyDataCopyWithImpl<_MyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyDataToJson(this);
  }
}

abstract class _MyData implements MyData {
  factory _MyData(
      {final int? totalCount,
      final int? filteredCount,
      final int? objectsPerPage,
      final int? pageNumber,
      final List<PublicFeedbackList>? publicFeedbackList,
      final List<AdminFeedbackList>? adminFeedbackList,
      final List<CompanyFeedbackList>? companyFeedbackList}) = _$_MyData;

  factory _MyData.fromJson(Map<String, dynamic> json) = _$_MyData.fromJson;

  @override
  int? get totalCount => throw _privateConstructorUsedError;
  @override
  int? get filteredCount => throw _privateConstructorUsedError;
  @override
  int? get objectsPerPage => throw _privateConstructorUsedError;
  @override
  int? get pageNumber => throw _privateConstructorUsedError;
  @override
  List<PublicFeedbackList>? get publicFeedbackList =>
      throw _privateConstructorUsedError;
  @override
  List<AdminFeedbackList>? get adminFeedbackList =>
      throw _privateConstructorUsedError;
  @override
  List<CompanyFeedbackList>? get companyFeedbackList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyDataCopyWith<_MyData> get copyWith => throw _privateConstructorUsedError;
}
