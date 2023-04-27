// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetail _$$_MovieDetailFromJson(Map<String, dynamic> json) =>
    _$_MovieDetail(
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
      overview: json['overview'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
      'overview': instance.overview,
      'genres': instance.genres,
    };
