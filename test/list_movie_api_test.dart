import 'package:dio/dio.dart';
import 'package:flutter_day_2/models/popular_movie/popular_movie.dart';
import 'package:flutter_day_2/client/list_movie_client.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
    ),
  );

  final ListMovieClient listMovieRepository = ListMovieClient(dio);

  test('test', () async {
    // final Movie movie = await listMovieRepository.getMovies(token: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1NzQ2Njg1NTI5OTU3YTIwYzk0MjA0OTEzYTlkYzAyZSIsInN1YiI6IjY0NDY5ZjQzNzY0ODQxMDg0MGMwMTNmNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.RayBKNK5-vjvKXhCjVAp5XUXlkxEOAlYw5Nj-5EL5T4',page: 1);

    final Movie movies = await listMovieRepository.getMovies(token: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1NzQ2Njg1NTI5OTU3YTIwYzk0MjA0OTEzYTlkYzAyZSIsInN1YiI6IjY0NDY5ZjQzNzY0ODQxMDg0MGMwMTNmNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.RayBKNK5-vjvKXhCjVAp5XUXlkxEOAlYw5Nj-5EL5T4',page: 1);

    print(movies);
    
    // expect(movies, isNotEmpty);
  });
}

