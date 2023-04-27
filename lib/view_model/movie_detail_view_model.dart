import 'package:flutter/cupertino.dart';
import 'package:flutter_day_2/client/movie_detail_client.dart';
import 'package:flutter_day_2/models/movie_detail/movie_detail.dart';
import 'package:dio/dio.dart';
import 'package:flutter_day_2/repositories/movie_detail_repository_impl.dart';

import '../utils/constants.dart';

class MovieDetailViewModel extends ChangeNotifier {
  bool _loading = false;
  MovieDetail _movieDetail = MovieDetail();

  bool get loading => _loading;
  MovieDetail get movieDetail => _movieDetail;

  MovieDetailViewModel(int id) {
    getMovieDetail(id);
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setMovieDetail(MovieDetail movieDetail) {
    _movieDetail = movieDetail;
  }

  getMovieDetail(int id) async {
    setLoading(true);

    Dio dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
      ),
    );

    final MovieDetailClient movieDetailClient = MovieDetailClient(dio);
    
    var response = await MovieDetailRepositoryImpl(movieDetailClient: movieDetailClient).getMovieDetail(token: TOKEN, id: id);
    setMovieDetail(response);
    setLoading(false);
  }
}