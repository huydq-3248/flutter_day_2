import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movie_results.freezed.dart';
part 'popular_movie_results.g.dart';

@Freezed(fromJson: true)
class PopularMovieResults with _$PopularMovieResults {
  const factory PopularMovieResults({
    int? id,
    @JsonKey(name: 'poster_path') String? posterPath,
    String? title,
    String? overview,
  }) = _PopularMovieResults;

  factory PopularMovieResults.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieResultsFromJson(json);
}
