import 'package:flutter_day_2/client/movie_detail_client.dart';
import 'package:flutter_day_2/models/movie_detail/movie_detail.dart';
import 'package:flutter_day_2/repositories/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  MovieDetailRepositoryImpl({
    required MovieDetailClient movieDetailClient,
  }) : _movieDetailClient = movieDetailClient;

  late final MovieDetailClient _movieDetailClient;

  @override
  Future<MovieDetail> getMovieDetail({
    required String token,
    required int id
  }) async {
    final MovieDetail result = await _movieDetailClient
        .getDetailMovie(token: token, id: id)
        .catchError((object) {
      print(object);
      throw object;
    });
    return result;
  }

}