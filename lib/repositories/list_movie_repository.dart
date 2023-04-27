import '../models/popular_movie/popular_movie.dart';

abstract class ListMovieRepository {
  Future<Movie> getMovies({
    required String token,
    required int page,
});
}