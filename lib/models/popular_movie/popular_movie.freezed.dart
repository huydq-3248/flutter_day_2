// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  List<PopularMovieResults>? get results => throw _privateConstructorUsedError;
  Map<int, String>? get base64Images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<PopularMovieResults>? results,
      Map<int, String>? base64Images});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
    Object? base64Images = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PopularMovieResults>?,
      base64Images: freezed == base64Images
          ? _value.base64Images
          : base64Images // ignore: cast_nullable_to_non_nullable
              as Map<int, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<PopularMovieResults>? results,
      Map<int, String>? base64Images});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
    Object? base64Images = freezed,
  }) {
    return _then(_$_Movie(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PopularMovieResults>?,
      base64Images: freezed == base64Images
          ? _value._base64Images
          : base64Images // ignore: cast_nullable_to_non_nullable
              as Map<int, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {this.page,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      final List<PopularMovieResults>? results,
      final Map<int, String>? base64Images})
      : _results = results,
        _base64Images = base64Images;

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<PopularMovieResults>? _results;
  @override
  List<PopularMovieResults>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<int, String>? _base64Images;
  @override
  Map<int, String>? get base64Images {
    final value = _base64Images;
    if (value == null) return null;
    if (_base64Images is EqualUnmodifiableMapView) return _base64Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Movie(page: $page, totalResults: $totalResults, totalPages: $totalPages, results: $results, base64Images: $base64Images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other._base64Images, _base64Images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      totalResults,
      totalPages,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_base64Images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {final int? page,
      @JsonKey(name: 'total_results') final int? totalResults,
      @JsonKey(name: 'total_pages') final int? totalPages,
      final List<PopularMovieResults>? results,
      final Map<int, String>? base64Images}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  List<PopularMovieResults>? get results;
  @override
  Map<int, String>? get base64Images;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
