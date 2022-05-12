// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackList _$FeedbackListFromJson(Map<String, dynamic> json) {
  return _FeedbackList.fromJson(json);
}

/// @nodoc
mixin _$FeedbackList {
  Meta? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  MyData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackListCopyWith<FeedbackList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackListCopyWith<$Res> {
  factory $FeedbackListCopyWith(
          FeedbackList value, $Res Function(FeedbackList) then) =
      _$FeedbackListCopyWithImpl<$Res>;
  $Res call({Meta? meta, @JsonKey(name: 'data') MyData? data});

  $MetaCopyWith<$Res>? get meta;
  $MyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackListCopyWithImpl<$Res> implements $FeedbackListCopyWith<$Res> {
  _$FeedbackListCopyWithImpl(this._value, this._then);

  final FeedbackList _value;
  // ignore: unused_field
  final $Res Function(FeedbackList) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyData?,
    ));
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $MyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FeedbackListCopyWith<$Res>
    implements $FeedbackListCopyWith<$Res> {
  factory _$FeedbackListCopyWith(
          _FeedbackList value, $Res Function(_FeedbackList) then) =
      __$FeedbackListCopyWithImpl<$Res>;
  @override
  $Res call({Meta? meta, @JsonKey(name: 'data') MyData? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $MyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeedbackListCopyWithImpl<$Res> extends _$FeedbackListCopyWithImpl<$Res>
    implements _$FeedbackListCopyWith<$Res> {
  __$FeedbackListCopyWithImpl(
      _FeedbackList _value, $Res Function(_FeedbackList) _then)
      : super(_value, (v) => _then(v as _FeedbackList));

  @override
  _FeedbackList get _value => super._value as _FeedbackList;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_FeedbackList(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackList implements _FeedbackList {
  _$_FeedbackList({this.meta, @JsonKey(name: 'data') this.data});

  factory _$_FeedbackList.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackListFromJson(json);

  @override
  final Meta? meta;
  @override
  @JsonKey(name: 'data')
  final MyData? data;

  @override
  String toString() {
    return 'FeedbackList(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackList &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$FeedbackListCopyWith<_FeedbackList> get copyWith =>
      __$FeedbackListCopyWithImpl<_FeedbackList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackListToJson(this);
  }
}

abstract class _FeedbackList implements FeedbackList {
  factory _FeedbackList(
      {final Meta? meta,
      @JsonKey(name: 'data') final MyData? data}) = _$_FeedbackList;

  factory _FeedbackList.fromJson(Map<String, dynamic> json) =
      _$_FeedbackList.fromJson;

  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  MyData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbackListCopyWith<_FeedbackList> get copyWith =>
      throw _privateConstructorUsedError;
}
