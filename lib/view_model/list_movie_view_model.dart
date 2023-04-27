import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_2/models/popular_movie/popular_movie.dart';
import 'package:flutter_day_2/models/popular_movie_results/popular_movie_results.dart';
import 'package:flutter_day_2/repositories/list_movie_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
import '../client/list_movie_client.dart';
import '../utils/constants.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ListMovieViewModel extends ChangeNotifier {
  bool _loading = false;
  Movie _movies = Movie();
  List<PopularMovieResults> _listMovies = [];
  int _page = 0;

  bool get loading => _loading;
  Movie get movies => _movies;
  List<PopularMovieResults> get listMovies => _listMovies;

  ListMovieViewModel() {
    getMovies(false);
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setMovie(Movie movies) {
    _movies = movies;
  }

  getMovies(bool isRefresh) async {
    setLoading(true);

    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (isRefresh == true) {
      await preferences.remove("list_movie_data");
    }

    String? listMovieData = preferences.getString("list_movie_data");

    if (listMovieData != null) {
      print("Cached");
      Map<String, dynamic> json = jsonDecode(listMovieData);
      Movie listMovie = Movie.fromJson(json);
      setMovie(listMovie);
    } else {
      print("Not Cached");
      Dio dio = Dio(
        BaseOptions(
          baseUrl: BASE_URL,
        ),
      );

      final ListMovieClient listMovieRepository = ListMovieClient(dio);

      var response = await ListMovieRepositoryImpl(listMovieClient: listMovieRepository).getMovies(token: TOKEN, page: _page + 1);

      setMovie(response);

      List<PopularMovieResults>? results = response.results;
      Map<int, String> base64Images = {};
      Movie movieTest;

      for (int i = 0; i < results!.length; i++) {
        final String imageUrl = results[i].posterPath ?? '';
        final http.Response response = await http.get(Uri.parse("https://image.tmdb.org/t/p/original/${imageUrl}"));

        final List<int> compressedBytes = await FlutterImageCompress.compressWithList(
          response.bodyBytes,
          format: CompressFormat.jpeg,
          quality: 50,
        );

        final String base64 = base64Encode(compressedBytes);
        base64Images[results[i].id ?? 0] = base64;
      }
      movieTest = response.copyWith(base64Images: base64Images);

      Map<String, dynamic> listMovie = movieTest.toJson();
      preferences.setString("list_movie_data", jsonEncode(listMovie));
    }

    setLoading(false);
  }

  Future<String?> networkImageToBase64(String imageUrl) async {
    http.Response response = await http.get(imageUrl as Uri);
    final bytes = response?.bodyBytes;
    return (bytes != null ? base64Encode(bytes) : null);
  }
}