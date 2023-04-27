// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularMovieResults _$$_PopularMovieResultsFromJson(
        Map<String, dynamic> json) =>
    _$_PopularMovieResults(
      id: json['id'] as int?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$$_PopularMovieResultsToJson(
        _$_PopularMovieResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'overview': instance.overview,
    };
