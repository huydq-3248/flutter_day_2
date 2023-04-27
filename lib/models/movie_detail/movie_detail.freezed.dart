// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
mixin _$MovieDetail {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  List<Genres>? get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res, MovieDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      String? title,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? overview,
      List<Genres>? genres});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res, $Val extends MovieDetail>
    implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$$_MovieDetailCopyWith(
          _$_MovieDetail value, $Res Function(_$_MovieDetail) then) =
      __$$_MovieDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      String? title,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? overview,
      List<Genres>? genres});
}

/// @nodoc
class __$$_MovieDetailCopyWithImpl<$Res>
    extends _$MovieDetailCopyWithImpl<$Res, _$_MovieDetail>
    implements _$$_MovieDetailCopyWith<$Res> {
  __$$_MovieDetailCopyWithImpl(
      _$_MovieDetail _value, $Res Function(_$_MovieDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$_MovieDetail(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail implements _MovieDetail {
  const _$_MovieDetail(
      {@JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'poster_path') this.posterPath,
      this.title,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.overview,
      final List<Genres>? genres})
      : _genres = genres;

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final String? title;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final String? overview;
  final List<Genres>? _genres;
  @override
  List<Genres>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetail(backdropPath: $backdropPath, posterPath: $posterPath, title: $title, voteAverage: $voteAverage, releaseDate: $releaseDate, overview: $overview, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetail &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      posterPath,
      title,
      voteAverage,
      releaseDate,
      overview,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      __$$_MovieDetailCopyWithImpl<_$_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailToJson(
      this,
    );
  }
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {@JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'poster_path') final String? posterPath,
      final String? title,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'release_date') final String? releaseDate,
      final String? overview,
      final List<Genres>? genres}) = _$_MovieDetail;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  String? get title;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  String? get overview;
  @override
  List<Genres>? get genres;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
