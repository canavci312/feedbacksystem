// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerStatistics _$CustomerStatisticsFromJson(Map<String, dynamic> json) {
  return _CustomerStatistics.fromJson(json);
}

/// @nodoc
mixin _$CustomerStatistics {
  double? get meanUserAge => throw _privateConstructorUsedError;
  List<UserAgeInterval>? get userAgeInterval =>
      throw _privateConstructorUsedError;
  double? get meanAccountAge => throw _privateConstructorUsedError;
  List<AccountAgeInterval>? get accountAgeInterval =>
      throw _privateConstructorUsedError;
  List<EducationDistribution>? get educationDistribution =>
      throw _privateConstructorUsedError;
  List<CityDistribution>? get cityDistribution =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerStatisticsCopyWith<CustomerStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStatisticsCopyWith<$Res> {
  factory $CustomerStatisticsCopyWith(
          CustomerStatistics value, $Res Function(CustomerStatistics) then) =
      _$CustomerStatisticsCopyWithImpl<$Res>;
  $Res call(
      {double? meanUserAge,
      List<UserAgeInterval>? userAgeInterval,
      double? meanAccountAge,
      List<AccountAgeInterval>? accountAgeInterval,
      List<EducationDistribution>? educationDistribution,
      List<CityDistribution>? cityDistribution});
}

/// @nodoc
class _$CustomerStatisticsCopyWithImpl<$Res>
    implements $CustomerStatisticsCopyWith<$Res> {
  _$CustomerStatisticsCopyWithImpl(this._value, this._then);

  final CustomerStatistics _value;
  // ignore: unused_field
  final $Res Function(CustomerStatistics) _then;

  @override
  $Res call({
    Object? meanUserAge = freezed,
    Object? userAgeInterval = freezed,
    Object? meanAccountAge = freezed,
    Object? accountAgeInterval = freezed,
    Object? educationDistribution = freezed,
    Object? cityDistribution = freezed,
  }) {
    return _then(_value.copyWith(
      meanUserAge: meanUserAge == freezed
          ? _value.meanUserAge
          : meanUserAge // ignore: cast_nullable_to_non_nullable
              as double?,
      userAgeInterval: userAgeInterval == freezed
          ? _value.userAgeInterval
          : userAgeInterval // ignore: cast_nullable_to_non_nullable
              as List<UserAgeInterval>?,
      meanAccountAge: meanAccountAge == freezed
          ? _value.meanAccountAge
          : meanAccountAge // ignore: cast_nullable_to_non_nullable
              as double?,
      accountAgeInterval: accountAgeInterval == freezed
          ? _value.accountAgeInterval
          : accountAgeInterval // ignore: cast_nullable_to_non_nullable
              as List<AccountAgeInterval>?,
      educationDistribution: educationDistribution == freezed
          ? _value.educationDistribution
          : educationDistribution // ignore: cast_nullable_to_non_nullable
              as List<EducationDistribution>?,
      cityDistribution: cityDistribution == freezed
          ? _value.cityDistribution
          : cityDistribution // ignore: cast_nullable_to_non_nullable
              as List<CityDistribution>?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerStatisticsCopyWith<$Res>
    implements $CustomerStatisticsCopyWith<$Res> {
  factory _$CustomerStatisticsCopyWith(
          _CustomerStatistics value, $Res Function(_CustomerStatistics) then) =
      __$CustomerStatisticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? meanUserAge,
      List<UserAgeInterval>? userAgeInterval,
      double? meanAccountAge,
      List<AccountAgeInterval>? accountAgeInterval,
      List<EducationDistribution>? educationDistribution,
      List<CityDistribution>? cityDistribution});
}

/// @nodoc
class __$CustomerStatisticsCopyWithImpl<$Res>
    extends _$CustomerStatisticsCopyWithImpl<$Res>
    implements _$CustomerStatisticsCopyWith<$Res> {
  __$CustomerStatisticsCopyWithImpl(
      _CustomerStatistics _value, $Res Function(_CustomerStatistics) _then)
      : super(_value, (v) => _then(v as _CustomerStatistics));

  @override
  _CustomerStatistics get _value => super._value as _CustomerStatistics;

  @override
  $Res call({
    Object? meanUserAge = freezed,
    Object? userAgeInterval = freezed,
    Object? meanAccountAge = freezed,
    Object? accountAgeInterval = freezed,
    Object? educationDistribution = freezed,
    Object? cityDistribution = freezed,
  }) {
    return _then(_CustomerStatistics(
      meanUserAge: meanUserAge == freezed
          ? _value.meanUserAge
          : meanUserAge // ignore: cast_nullable_to_non_nullable
              as double?,
      userAgeInterval: userAgeInterval == freezed
          ? _value.userAgeInterval
          : userAgeInterval // ignore: cast_nullable_to_non_nullable
              as List<UserAgeInterval>?,
      meanAccountAge: meanAccountAge == freezed
          ? _value.meanAccountAge
          : meanAccountAge // ignore: cast_nullable_to_non_nullable
              as double?,
      accountAgeInterval: accountAgeInterval == freezed
          ? _value.accountAgeInterval
          : accountAgeInterval // ignore: cast_nullable_to_non_nullable
              as List<AccountAgeInterval>?,
      educationDistribution: educationDistribution == freezed
          ? _value.educationDistribution
          : educationDistribution // ignore: cast_nullable_to_non_nullable
              as List<EducationDistribution>?,
      cityDistribution: cityDistribution == freezed
          ? _value.cityDistribution
          : cityDistribution // ignore: cast_nullable_to_non_nullable
              as List<CityDistribution>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerStatistics implements _CustomerStatistics {
  _$_CustomerStatistics(
      {this.meanUserAge,
      final List<UserAgeInterval>? userAgeInterval,
      this.meanAccountAge,
      final List<AccountAgeInterval>? accountAgeInterval,
      final List<EducationDistribution>? educationDistribution,
      final List<CityDistribution>? cityDistribution})
      : _userAgeInterval = userAgeInterval,
        _accountAgeInterval = accountAgeInterval,
        _educationDistribution = educationDistribution,
        _cityDistribution = cityDistribution;

  factory _$_CustomerStatistics.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerStatisticsFromJson(json);

  @override
  final double? meanUserAge;
  final List<UserAgeInterval>? _userAgeInterval;
  @override
  List<UserAgeInterval>? get userAgeInterval {
    final value = _userAgeInterval;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? meanAccountAge;
  final List<AccountAgeInterval>? _accountAgeInterval;
  @override
  List<AccountAgeInterval>? get accountAgeInterval {
    final value = _accountAgeInterval;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EducationDistribution>? _educationDistribution;
  @override
  List<EducationDistribution>? get educationDistribution {
    final value = _educationDistribution;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CityDistribution>? _cityDistribution;
  @override
  List<CityDistribution>? get cityDistribution {
    final value = _cityDistribution;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerStatistics(meanUserAge: $meanUserAge, userAgeInterval: $userAgeInterval, meanAccountAge: $meanAccountAge, accountAgeInterval: $accountAgeInterval, educationDistribution: $educationDistribution, cityDistribution: $cityDistribution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerStatistics &&
            const DeepCollectionEquality()
                .equals(other.meanUserAge, meanUserAge) &&
            const DeepCollectionEquality()
                .equals(other.userAgeInterval, userAgeInterval) &&
            const DeepCollectionEquality()
                .equals(other.meanAccountAge, meanAccountAge) &&
            const DeepCollectionEquality()
                .equals(other.accountAgeInterval, accountAgeInterval) &&
            const DeepCollectionEquality()
                .equals(other.educationDistribution, educationDistribution) &&
            const DeepCollectionEquality()
                .equals(other.cityDistribution, cityDistribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meanUserAge),
      const DeepCollectionEquality().hash(userAgeInterval),
      const DeepCollectionEquality().hash(meanAccountAge),
      const DeepCollectionEquality().hash(accountAgeInterval),
      const DeepCollectionEquality().hash(educationDistribution),
      const DeepCollectionEquality().hash(cityDistribution));

  @JsonKey(ignore: true)
  @override
  _$CustomerStatisticsCopyWith<_CustomerStatistics> get copyWith =>
      __$CustomerStatisticsCopyWithImpl<_CustomerStatistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerStatisticsToJson(this);
  }
}

abstract class _CustomerStatistics implements CustomerStatistics {
  factory _CustomerStatistics(
      {final double? meanUserAge,
      final List<UserAgeInterval>? userAgeInterval,
      final double? meanAccountAge,
      final List<AccountAgeInterval>? accountAgeInterval,
      final List<EducationDistribution>? educationDistribution,
      final List<CityDistribution>? cityDistribution}) = _$_CustomerStatistics;

  factory _CustomerStatistics.fromJson(Map<String, dynamic> json) =
      _$_CustomerStatistics.fromJson;

  @override
  double? get meanUserAge => throw _privateConstructorUsedError;
  @override
  List<UserAgeInterval>? get userAgeInterval =>
      throw _privateConstructorUsedError;
  @override
  double? get meanAccountAge => throw _privateConstructorUsedError;
  @override
  List<AccountAgeInterval>? get accountAgeInterval =>
      throw _privateConstructorUsedError;
  @override
  List<EducationDistribution>? get educationDistribution =>
      throw _privateConstructorUsedError;
  @override
  List<CityDistribution>? get cityDistribution =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomerStatisticsCopyWith<_CustomerStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}
