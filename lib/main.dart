import 'package:flutter/material.dart';
import 'package:flutter_day_2/list_movie.dart';
import 'package:flutter_day_2/models/popular_movie/popular_movie.dart';
import 'package:flutter_day_2/view_model/list_movie_view_model.dart';
import 'package:flutter_day_2/view_model/movie_detail_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ListMovieViewModel())],
      child: MaterialApp(
        title: 'List Movie',
        home: ListMovie(),
      ),
    );
  }
}