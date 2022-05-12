// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_add_feedback_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerAddFeedbackState {
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get showErrorDialog => throw _privateConstructorUsedError;
  bool? get isSuccessful => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerAddFeedbackStateCopyWith<CustomerAddFeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddFeedbackStateCopyWith<$Res> {
  factory $CustomerAddFeedbackStateCopyWith(CustomerAddFeedbackState value,
          $Res Function(CustomerAddFeedbackState) then) =
      _$CustomerAddFeedbackStateCopyWithImpl<$Res>;
  $Res call({bool? isLoading, bool? showErrorDialog, bool? isSuccessful});
}

/// @nodoc
class _$CustomerAddFeedbackStateCopyWithImpl<$Res>
    implements $CustomerAddFeedbackStateCopyWith<$Res> {
  _$CustomerAddFeedbackStateCopyWithImpl(this._value, this._then);

  final CustomerAddFeedbackState _value;
  // ignore: unused_field
  final $Res Function(CustomerAddFeedbackState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrorDialog = freezed,
    Object? isSuccessful = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorDialog: showErrorDialog == freezed
          ? _value.showErrorDialog
          : showErrorDialog // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $CustomerAddFeedbackStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool? isLoading, bool? showErrorDialog, bool? isSuccessful});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CustomerAddFeedbackStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrorDialog = freezed,
    Object? isSuccessful = freezed,
  }) {
    return _then(_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorDialog: showErrorDialog == freezed
          ? _value.showErrorDialog
          : showErrorDialog // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.isLoading, this.showErrorDialog, this.isSuccessful});

  @override
  final bool? isLoading;
  @override
  final bool? showErrorDialog;
  @override
  final bool? isSuccessful;

  @override
  String toString() {
    return 'CustomerAddFeedbackState.initial(isLoading: $isLoading, showErrorDialog: $showErrorDialog, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrorDialog, showErrorDialog) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrorDialog),
      const DeepCollectionEquality().hash(isSuccessful));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)
        initial,
  }) {
    return initial(isLoading, showErrorDialog, isSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)?
        initial,
  }) {
    return initial?.call(isLoading, showErrorDialog, isSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isLoading, bool? showErrorDialog, bool? isSuccessful)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, showErrorDialog, isSuccessful);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerAddFeedbackState {
  const factory _Initial(
      {final bool? isLoading,
      final bool? showErrorDialog,
      final bool? isSuccessful}) = _$_Initial;

  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  bool? get showErrorDialog => throw _privateConstructorUsedError;
  @override
  bool? get isSuccessful => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
