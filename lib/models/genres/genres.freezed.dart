// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
mixin _$Genres {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res, Genres>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res, $Val extends Genres>
    implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$$_GenresCopyWith(_$_Genres value, $Res Function(_$_Genres) then) =
      __$$_GenresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_GenresCopyWithImpl<$Res>
    extends _$GenresCopyWithImpl<$Res, _$_Genres>
    implements _$$_GenresCopyWith<$Res> {
  __$$_GenresCopyWithImpl(_$_Genres _value, $Res Function(_$_Genres) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Genres(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genres implements _Genres {
  const _$_Genres({this.name});

  factory _$_Genres.fromJson(Map<String, dynamic> json) =>
      _$$_GenresFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'Genres(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genres &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenresCopyWith<_$_Genres> get copyWith =>
      __$$_GenresCopyWithImpl<_$_Genres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresToJson(
      this,
    );
  }
}

abstract class _Genres implements Genres {
  const factory _Genres({final String? name}) = _$_Genres;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$_Genres.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenresCopyWith<_$_Genres> get copyWith =>
      throw _privateConstructorUsedError;
}
