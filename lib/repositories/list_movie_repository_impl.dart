import 'package:flutter_day_2/client/list_movie_client.dart';
import 'package:flutter_day_2/models/popular_movie/popular_movie.dart';
import 'package:flutter_day_2/repositories/list_movie_repository.dart';

class ListMovieRepositoryImpl implements ListMovieRepository {
  ListMovieRepositoryImpl({
    required ListMovieClient listMovieClient,
  }) : _listMovieClient = listMovieClient;

  late final ListMovieClient _listMovieClient;

  @override
  Future<Movie> getMovies({
    required String token,
    required int page,
  }) async {
    final Movie result = await _listMovieClient
        .getMovies(token: token, page: page)
        .catchError((object) {
      print(object);
      throw object;
    });
    return result;
  }
}
