import 'dart:ffi';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../genres/genres.dart';

part 'movie_detail.g.dart';
part 'movie_detail.freezed.dart';

@Freezed(fromJson: true)
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    String? title,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? overview,
    List<Genres>? genres,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}
