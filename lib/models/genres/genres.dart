import 'package:freezed_annotation/freezed_annotation.dart';

part 'genres.freezed.dart';
part 'genres.g.dart';

@Freezed(fromJson: true)
class Genres with _$Genres {
  const factory Genres({
    String? name,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
