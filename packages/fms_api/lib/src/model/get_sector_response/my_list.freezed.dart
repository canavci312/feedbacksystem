// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyList _$MyListFromJson(Map<String, dynamic> json) {
  return _MyList.fromJson(json);
}

/// @nodoc
mixin _$MyList {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyListCopyWith<MyList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListCopyWith<$Res> {
  factory $MyListCopyWith(MyList value, $Res Function(MyList) then) =
      _$MyListCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$MyListCopyWithImpl<$Res> implements $MyListCopyWith<$Res> {
  _$MyListCopyWithImpl(this._value, this._then);

  final MyList _value;
  // ignore: unused_field
  final $Res Function(MyList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyListCopyWith<$Res> implements $MyListCopyWith<$Res> {
  factory _$MyListCopyWith(_MyList value, $Res Function(_MyList) then) =
      __$MyListCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$MyListCopyWithImpl<$Res> extends _$MyListCopyWithImpl<$Res>
    implements _$MyListCopyWith<$Res> {
  __$MyListCopyWithImpl(_MyList _value, $Res Function(_MyList) _then)
      : super(_value, (v) => _then(v as _MyList));

  @override
  _MyList get _value => super._value as _MyList;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_MyList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyList implements _MyList {
  _$_MyList({this.id, this.name});

  factory _$_MyList.fromJson(Map<String, dynamic> json) =>
      _$$_MyListFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'MyList(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyList &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MyListCopyWith<_MyList> get copyWith =>
      __$MyListCopyWithImpl<_MyList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyListToJson(this);
  }
}

abstract class _MyList implements MyList {
  factory _MyList({final int? id, final String? name}) = _$_MyList;

  factory _MyList.fromJson(Map<String, dynamic> json) = _$_MyList.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyListCopyWith<_MyList> get copyWith => throw _privateConstructorUsedError;
}
