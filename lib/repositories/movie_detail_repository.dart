import '../models/movie_detail/movie_detail.dart';

abstract class MovieDetailRepository {
  Future<MovieDetail> getMovieDetail({
    required String token,
    required int id,
});
}