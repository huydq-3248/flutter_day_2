import 'package:flutter/material.dart';
import 'package:flutter_day_2/movie_item.dart';
import 'package:flutter_day_2/view_model/list_movie_view_model.dart';
import 'package:provider/provider.dart';

import 'models/popular_movie_results/popular_movie_results.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Popular';
    ListMovieViewModel listMovieViewModel = context.watch<ListMovieViewModel>();

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await listMovieViewModel.getMovies(true);
          },
          child: Container(
            child: Column(
              children: [
                _ui(listMovieViewModel),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _ui(ListMovieViewModel listMovieViewModel) {
    List<PopularMovieResults> results = [];
    Map<int, String> base64Image = {};
    if (listMovieViewModel.loading) {
      return Container();
    }
    if (listMovieViewModel.movies.results != null) {
      results = listMovieViewModel.movies.results!;
    }
    if (listMovieViewModel.movies.base64Images != null) {
      base64Image = listMovieViewModel.movies.base64Images!;
    }
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            PopularMovieResults movieResult = listMovieViewModel.movies.results![index];
            return Container(
              child: Column(
                children: [
                  MovieItem(item: movieResult, base64Images: base64Image),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: results.length),
    );
  }
}
