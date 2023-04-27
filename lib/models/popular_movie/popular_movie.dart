import 'package:flutter_day_2/models/popular_movie_results/popular_movie_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movie.freezed.dart';
part 'popular_movie.g.dart';

@Freezed(fromJson: true)
class Movie with _$Movie {
  const factory Movie({
    int? page,
    @JsonKey(name: 'total_results') int? totalResults,
    @JsonKey(name: 'total_pages') int? totalPages,
    List<PopularMovieResults>? results,
    Map<int, String>? base64Images,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "page": page,
      "totalResults": totalResults,
      "totalPages": totalPages,
      "results": results,
      "base64Images": base64Images,
    };
  }
}