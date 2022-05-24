// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeReport _$EmployeeReportFromJson(Map<String, dynamic> json) {
  return _EmployeeReport.fromJson(json);
}

/// @nodoc
mixin _$EmployeeReport {
  int? get employeeId => throw _privateConstructorUsedError;
  String? get employeeName => throw _privateConstructorUsedError;
  int? get totalDirectedFeedbackCount => throw _privateConstructorUsedError;
  int? get repliedFeedbackCount => throw _privateConstructorUsedError;
  int? get solvedFeedbackCount => throw _privateConstructorUsedError;
  int? get archivedFeedbackCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeReportCopyWith<EmployeeReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeReportCopyWith<$Res> {
  factory $EmployeeReportCopyWith(
          EmployeeReport value, $Res Function(EmployeeReport) then) =
      _$EmployeeReportCopyWithImpl<$Res>;
  $Res call(
      {int? employeeId,
      String? employeeName,
      int? totalDirectedFeedbackCount,
      int? repliedFeedbackCount,
      int? solvedFeedbackCount,
      int? archivedFeedbackCount});
}

/// @nodoc
class _$EmployeeReportCopyWithImpl<$Res>
    implements $EmployeeReportCopyWith<$Res> {
  _$EmployeeReportCopyWithImpl(this._value, this._then);

  final EmployeeReport _value;
  // ignore: unused_field
  final $Res Function(EmployeeReport) _then;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeName = freezed,
    Object? totalDirectedFeedbackCount = freezed,
    Object? repliedFeedbackCount = freezed,
    Object? solvedFeedbackCount = freezed,
    Object? archivedFeedbackCount = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeName: employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDirectedFeedbackCount: totalDirectedFeedbackCount == freezed
          ? _value.totalDirectedFeedbackCount
          : totalDirectedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repliedFeedbackCount: repliedFeedbackCount == freezed
          ? _value.repliedFeedbackCount
          : repliedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      solvedFeedbackCount: solvedFeedbackCount == freezed
          ? _value.solvedFeedbackCount
          : solvedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archivedFeedbackCount: archivedFeedbackCount == freezed
          ? _value.archivedFeedbackCount
          : archivedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeReportCopyWith<$Res>
    implements $EmployeeReportCopyWith<$Res> {
  factory _$EmployeeReportCopyWith(
          _EmployeeReport value, $Res Function(_EmployeeReport) then) =
      __$EmployeeReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? employeeId,
      String? employeeName,
      int? totalDirectedFeedbackCount,
      int? repliedFeedbackCount,
      int? solvedFeedbackCount,
      int? archivedFeedbackCount});
}

/// @nodoc
class __$EmployeeReportCopyWithImpl<$Res>
    extends _$EmployeeReportCopyWithImpl<$Res>
    implements _$EmployeeReportCopyWith<$Res> {
  __$EmployeeReportCopyWithImpl(
      _EmployeeReport _value, $Res Function(_EmployeeReport) _then)
      : super(_value, (v) => _then(v as _EmployeeReport));

  @override
  _EmployeeReport get _value => super._value as _EmployeeReport;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeName = freezed,
    Object? totalDirectedFeedbackCount = freezed,
    Object? repliedFeedbackCount = freezed,
    Object? solvedFeedbackCount = freezed,
    Object? archivedFeedbackCount = freezed,
  }) {
    return _then(_EmployeeReport(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeName: employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDirectedFeedbackCount: totalDirectedFeedbackCount == freezed
          ? _value.totalDirectedFeedbackCount
          : totalDirectedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repliedFeedbackCount: repliedFeedbackCount == freezed
          ? _value.repliedFeedbackCount
          : repliedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      solvedFeedbackCount: solvedFeedbackCount == freezed
          ? _value.solvedFeedbackCount
          : solvedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archivedFeedbackCount: archivedFeedbackCount == freezed
          ? _value.archivedFeedbackCount
          : archivedFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeReport implements _EmployeeReport {
  _$_EmployeeReport(
      {this.employeeId,
      this.employeeName,
      this.totalDirectedFeedbackCount,
      this.repliedFeedbackCount,
      this.solvedFeedbackCount,
      this.archivedFeedbackCount});

  factory _$_EmployeeReport.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeReportFromJson(json);

  @override
  final int? employeeId;
  @override
  final String? employeeName;
  @override
  final int? totalDirectedFeedbackCount;
  @override
  final int? repliedFeedbackCount;
  @override
  final int? solvedFeedbackCount;
  @override
  final int? archivedFeedbackCount;

  @override
  String toString() {
    return 'EmployeeReport(employeeId: $employeeId, employeeName: $employeeName, totalDirectedFeedbackCount: $totalDirectedFeedbackCount, repliedFeedbackCount: $repliedFeedbackCount, solvedFeedbackCount: $solvedFeedbackCount, archivedFeedbackCount: $archivedFeedbackCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeReport &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality()
                .equals(other.employeeName, employeeName) &&
            const DeepCollectionEquality().equals(
                other.totalDirectedFeedbackCount, totalDirectedFeedbackCount) &&
            const DeepCollectionEquality()
                .equals(other.repliedFeedbackCount, repliedFeedbackCount) &&
            const DeepCollectionEquality()
                .equals(other.solvedFeedbackCount, solvedFeedbackCount) &&
            const DeepCollectionEquality()
                .equals(other.archivedFeedbackCount, archivedFeedbackCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(employeeName),
      const DeepCollectionEquality().hash(totalDirectedFeedbackCount),
      const DeepCollectionEquality().hash(repliedFeedbackCount),
      const DeepCollectionEquality().hash(solvedFeedbackCount),
      const DeepCollectionEquality().hash(archivedFeedbackCount));

  @JsonKey(ignore: true)
  @override
  _$EmployeeReportCopyWith<_EmployeeReport> get copyWith =>
      __$EmployeeReportCopyWithImpl<_EmployeeReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeReportToJson(this);
  }
}

abstract class _EmployeeReport implements EmployeeReport {
  factory _EmployeeReport(
      {final int? employeeId,
      final String? employeeName,
      final int? totalDirectedFeedbackCount,
      final int? repliedFeedbackCount,
      final int? solvedFeedbackCount,
      final int? archivedFeedbackCount}) = _$_EmployeeReport;

  factory _EmployeeReport.fromJson(Map<String, dynamic> json) =
      _$_EmployeeReport.fromJson;

  @override
  int? get employeeId => throw _privateConstructorUsedError;
  @override
  String? get employeeName => throw _privateConstructorUsedError;
  @override
  int? get totalDirectedFeedbackCount => throw _privateConstructorUsedError;
  @override
  int? get repliedFeedbackCount => throw _privateConstructorUsedError;
  @override
  int? get solvedFeedbackCount => throw _privateConstructorUsedError;
  @override
  int? get archivedFeedbackCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmployeeReportCopyWith<_EmployeeReport> get copyWith =>
      throw _privateConstructorUsedError;
}
