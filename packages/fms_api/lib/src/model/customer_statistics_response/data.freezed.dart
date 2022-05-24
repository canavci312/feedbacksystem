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
  int? get totalFeedbackCount => throw _privateConstructorUsedError;
  int? get userCountPostedFeedback => throw _privateConstructorUsedError;
  CustomerStatistics? get customerStatistics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? totalFeedbackCount,
      int? userCountPostedFeedback,
      CustomerStatistics? customerStatistics});

  $CustomerStatisticsCopyWith<$Res>? get customerStatistics;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? totalFeedbackCount = freezed,
    Object? userCountPostedFeedback = freezed,
    Object? customerStatistics = freezed,
  }) {
    return _then(_value.copyWith(
      totalFeedbackCount: totalFeedbackCount == freezed
          ? _value.totalFeedbackCount
          : totalFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userCountPostedFeedback: userCountPostedFeedback == freezed
          ? _value.userCountPostedFeedback
          : userCountPostedFeedback // ignore: cast_nullable_to_non_nullable
              as int?,
      customerStatistics: customerStatistics == freezed
          ? _value.customerStatistics
          : customerStatistics // ignore: cast_nullable_to_non_nullable
              as CustomerStatistics?,
    ));
  }

  @override
  $CustomerStatisticsCopyWith<$Res>? get customerStatistics {
    if (_value.customerStatistics == null) {
      return null;
    }

    return $CustomerStatisticsCopyWith<$Res>(_value.customerStatistics!,
        (value) {
      return _then(_value.copyWith(customerStatistics: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalFeedbackCount,
      int? userCountPostedFeedback,
      CustomerStatistics? customerStatistics});

  @override
  $CustomerStatisticsCopyWith<$Res>? get customerStatistics;
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
    Object? totalFeedbackCount = freezed,
    Object? userCountPostedFeedback = freezed,
    Object? customerStatistics = freezed,
  }) {
    return _then(_Data(
      totalFeedbackCount: totalFeedbackCount == freezed
          ? _value.totalFeedbackCount
          : totalFeedbackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userCountPostedFeedback: userCountPostedFeedback == freezed
          ? _value.userCountPostedFeedback
          : userCountPostedFeedback // ignore: cast_nullable_to_non_nullable
              as int?,
      customerStatistics: customerStatistics == freezed
          ? _value.customerStatistics
          : customerStatistics // ignore: cast_nullable_to_non_nullable
              as CustomerStatistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  _$_Data(
      {this.totalFeedbackCount,
      this.userCountPostedFeedback,
      this.customerStatistics});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? totalFeedbackCount;
  @override
  final int? userCountPostedFeedback;
  @override
  final CustomerStatistics? customerStatistics;

  @override
  String toString() {
    return 'Data(totalFeedbackCount: $totalFeedbackCount, userCountPostedFeedback: $userCountPostedFeedback, customerStatistics: $customerStatistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality()
                .equals(other.totalFeedbackCount, totalFeedbackCount) &&
            const DeepCollectionEquality().equals(
                other.userCountPostedFeedback, userCountPostedFeedback) &&
            const DeepCollectionEquality()
                .equals(other.customerStatistics, customerStatistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalFeedbackCount),
      const DeepCollectionEquality().hash(userCountPostedFeedback),
      const DeepCollectionEquality().hash(customerStatistics));

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
      {final int? totalFeedbackCount,
      final int? userCountPostedFeedback,
      final CustomerStatistics? customerStatistics}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get totalFeedbackCount => throw _privateConstructorUsedError;
  @override
  int? get userCountPostedFeedback => throw _privateConstructorUsedError;
  @override
  CustomerStatistics? get customerStatistics =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
