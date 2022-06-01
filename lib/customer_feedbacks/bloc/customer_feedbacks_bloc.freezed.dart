// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_feedbacks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerFeedbacksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeedbacks,
    required TResult Function(String input) searchFeedbacks,
    required TResult Function(FeedbackFilterModel? model) applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedbacksFetched value) fetchFeedbacks,
    required TResult Function(_FeedbacksSearched value) searchFeedbacks,
    required TResult Function(_FilterApplied value) applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFeedbacksEventCopyWith<$Res> {
  factory $CustomerFeedbacksEventCopyWith(CustomerFeedbacksEvent value,
          $Res Function(CustomerFeedbacksEvent) then) =
      _$CustomerFeedbacksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerFeedbacksEventCopyWithImpl<$Res>
    implements $CustomerFeedbacksEventCopyWith<$Res> {
  _$CustomerFeedbacksEventCopyWithImpl(this._value, this._then);

  final CustomerFeedbacksEvent _value;
  // ignore: unused_field
  final $Res Function(CustomerFeedbacksEvent) _then;
}

/// @nodoc
abstract class _$$_FeedbacksFetchedCopyWith<$Res> {
  factory _$$_FeedbacksFetchedCopyWith(
          _$_FeedbacksFetched value, $Res Function(_$_FeedbacksFetched) then) =
      __$$_FeedbacksFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FeedbacksFetchedCopyWithImpl<$Res>
    extends _$CustomerFeedbacksEventCopyWithImpl<$Res>
    implements _$$_FeedbacksFetchedCopyWith<$Res> {
  __$$_FeedbacksFetchedCopyWithImpl(
      _$_FeedbacksFetched _value, $Res Function(_$_FeedbacksFetched) _then)
      : super(_value, (v) => _then(v as _$_FeedbacksFetched));

  @override
  _$_FeedbacksFetched get _value => super._value as _$_FeedbacksFetched;
}

/// @nodoc

class _$_FeedbacksFetched implements _FeedbacksFetched {
  const _$_FeedbacksFetched();

  @override
  String toString() {
    return 'CustomerFeedbacksEvent.fetchFeedbacks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FeedbacksFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeedbacks,
    required TResult Function(String input) searchFeedbacks,
    required TResult Function(FeedbackFilterModel? model) applyFilter,
  }) {
    return fetchFeedbacks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
  }) {
    return fetchFeedbacks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
    required TResult orElse(),
  }) {
    if (fetchFeedbacks != null) {
      return fetchFeedbacks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedbacksFetched value) fetchFeedbacks,
    required TResult Function(_FeedbacksSearched value) searchFeedbacks,
    required TResult Function(_FilterApplied value) applyFilter,
  }) {
    return fetchFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
  }) {
    return fetchFeedbacks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
    required TResult orElse(),
  }) {
    if (fetchFeedbacks != null) {
      return fetchFeedbacks(this);
    }
    return orElse();
  }
}

abstract class _FeedbacksFetched implements CustomerFeedbacksEvent {
  const factory _FeedbacksFetched() = _$_FeedbacksFetched;
}

/// @nodoc
abstract class _$$_FeedbacksSearchedCopyWith<$Res> {
  factory _$$_FeedbacksSearchedCopyWith(_$_FeedbacksSearched value,
          $Res Function(_$_FeedbacksSearched) then) =
      __$$_FeedbacksSearchedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_FeedbacksSearchedCopyWithImpl<$Res>
    extends _$CustomerFeedbacksEventCopyWithImpl<$Res>
    implements _$$_FeedbacksSearchedCopyWith<$Res> {
  __$$_FeedbacksSearchedCopyWithImpl(
      _$_FeedbacksSearched _value, $Res Function(_$_FeedbacksSearched) _then)
      : super(_value, (v) => _then(v as _$_FeedbacksSearched));

  @override
  _$_FeedbacksSearched get _value => super._value as _$_FeedbacksSearched;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_FeedbacksSearched(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FeedbacksSearched implements _FeedbacksSearched {
  const _$_FeedbacksSearched(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CustomerFeedbacksEvent.searchFeedbacks(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbacksSearched &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_FeedbacksSearchedCopyWith<_$_FeedbacksSearched> get copyWith =>
      __$$_FeedbacksSearchedCopyWithImpl<_$_FeedbacksSearched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeedbacks,
    required TResult Function(String input) searchFeedbacks,
    required TResult Function(FeedbackFilterModel? model) applyFilter,
  }) {
    return searchFeedbacks(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
  }) {
    return searchFeedbacks?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
    required TResult orElse(),
  }) {
    if (searchFeedbacks != null) {
      return searchFeedbacks(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedbacksFetched value) fetchFeedbacks,
    required TResult Function(_FeedbacksSearched value) searchFeedbacks,
    required TResult Function(_FilterApplied value) applyFilter,
  }) {
    return searchFeedbacks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
  }) {
    return searchFeedbacks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
    required TResult orElse(),
  }) {
    if (searchFeedbacks != null) {
      return searchFeedbacks(this);
    }
    return orElse();
  }
}

abstract class _FeedbacksSearched implements CustomerFeedbacksEvent {
  const factory _FeedbacksSearched(final String input) = _$_FeedbacksSearched;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FeedbacksSearchedCopyWith<_$_FeedbacksSearched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterAppliedCopyWith<$Res> {
  factory _$$_FilterAppliedCopyWith(
          _$_FilterApplied value, $Res Function(_$_FilterApplied) then) =
      __$$_FilterAppliedCopyWithImpl<$Res>;
  $Res call({FeedbackFilterModel? model});
}

/// @nodoc
class __$$_FilterAppliedCopyWithImpl<$Res>
    extends _$CustomerFeedbacksEventCopyWithImpl<$Res>
    implements _$$_FilterAppliedCopyWith<$Res> {
  __$$_FilterAppliedCopyWithImpl(
      _$_FilterApplied _value, $Res Function(_$_FilterApplied) _then)
      : super(_value, (v) => _then(v as _$_FilterApplied));

  @override
  _$_FilterApplied get _value => super._value as _$_FilterApplied;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_FilterApplied(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FeedbackFilterModel?,
    ));
  }
}

/// @nodoc

class _$_FilterApplied implements _FilterApplied {
  const _$_FilterApplied(this.model);

  @override
  final FeedbackFilterModel? model;

  @override
  String toString() {
    return 'CustomerFeedbacksEvent.applyFilter(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterApplied &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_FilterAppliedCopyWith<_$_FilterApplied> get copyWith =>
      __$$_FilterAppliedCopyWithImpl<_$_FilterApplied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeedbacks,
    required TResult Function(String input) searchFeedbacks,
    required TResult Function(FeedbackFilterModel? model) applyFilter,
  }) {
    return applyFilter(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
  }) {
    return applyFilter?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeedbacks,
    TResult Function(String input)? searchFeedbacks,
    TResult Function(FeedbackFilterModel? model)? applyFilter,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedbacksFetched value) fetchFeedbacks,
    required TResult Function(_FeedbacksSearched value) searchFeedbacks,
    required TResult Function(_FilterApplied value) applyFilter,
  }) {
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
  }) {
    return applyFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedbacksFetched value)? fetchFeedbacks,
    TResult Function(_FeedbacksSearched value)? searchFeedbacks,
    TResult Function(_FilterApplied value)? applyFilter,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class _FilterApplied implements CustomerFeedbacksEvent {
  const factory _FilterApplied(final FeedbackFilterModel? model) =
      _$_FilterApplied;

  FeedbackFilterModel? get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FilterAppliedCopyWith<_$_FilterApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerFeedbacksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFeedbacksStateCopyWith<$Res> {
  factory $CustomerFeedbacksStateCopyWith(CustomerFeedbacksState value,
          $Res Function(CustomerFeedbacksState) then) =
      _$CustomerFeedbacksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerFeedbacksStateCopyWithImpl<$Res>
    implements $CustomerFeedbacksStateCopyWith<$Res> {
  _$CustomerFeedbacksStateCopyWithImpl(this._value, this._then);

  final CustomerFeedbacksState _value;
  // ignore: unused_field
  final $Res Function(CustomerFeedbacksState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CustomerFeedbacksStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CustomerFeedbacksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerFeedbacksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CustomerFeedbacksStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CustomerFeedbacksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CustomerFeedbacksState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {List<PublicFeedbackList> list,
      List<PublicFeedbackList> filteredList,
      bool hasReachedMax});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CustomerFeedbacksStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? list = freezed,
    Object? filteredList = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_$_Success(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PublicFeedbackList>,
      filteredList == freezed
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<PublicFeedbackList>,
      hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<PublicFeedbackList> list,
      final List<PublicFeedbackList> filteredList,
      [this.hasReachedMax = false])
      : _list = list,
        _filteredList = filteredList;

  final List<PublicFeedbackList> _list;
  @override
  List<PublicFeedbackList> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<PublicFeedbackList> _filteredList;
  @override
  List<PublicFeedbackList> get filteredList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CustomerFeedbacksState.success(list: $list, filteredList: $filteredList, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_filteredList),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)
        success,
  }) {
    return success(list, filteredList, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
  }) {
    return success?.call(list, filteredList, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PublicFeedbackList> list,
            List<PublicFeedbackList> filteredList, bool hasReachedMax)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list, filteredList, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CustomerFeedbacksState {
  const factory _Success(final List<PublicFeedbackList> list,
      final List<PublicFeedbackList> filteredList,
      [final bool hasReachedMax]) = _$_Success;

  List<PublicFeedbackList> get list => throw _privateConstructorUsedError;
  List<PublicFeedbackList> get filteredList =>
      throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
