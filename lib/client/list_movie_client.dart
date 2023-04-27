import 'package:flutter_day_2/models/popular_movie/popular_movie.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'list_movie_client.g.dart';

@RestApi()
abstract class ListMovieClient {
  factory ListMovieClient(Dio dio, {String? baseUrl}) = _ListMovieClient;

  @GET('/movie/popular')
  Future<Movie> getMovies({
    @Header('Authorization') required String token,
    @Query('page') required int page,
  });
}