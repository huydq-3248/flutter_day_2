import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../models/movie_detail/movie_detail.dart';
part 'movie_detail_client.g.dart';

@RestApi()
abstract class MovieDetailClient {
  factory MovieDetailClient(Dio dio, {String? baseUrl}) = _MovieDetailClient;

  @GET('/movie/{id}')
  Future<MovieDetail> getDetailMovie({
    @Header('Authorization') required String token,
    @Path('id') required int id,
  });
}
