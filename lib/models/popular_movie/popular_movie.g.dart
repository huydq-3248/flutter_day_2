// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      page: json['page'] as int?,
      totalResults: json['total_results'] as int?,
      totalPages: json['total_pages'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PopularMovieResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      base64Images: (json['base64Images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results,
      'base64Images':
          instance.base64Images?.map((k, e) => MapEntry(k.toString(), e)),
    };
