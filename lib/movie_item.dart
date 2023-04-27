import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_day_2/movie_detail.dart';
import 'package:flutter_day_2/view_model/movie_detail_view_model.dart';
import 'package:provider/provider.dart';
import 'models/popular_movie_results/popular_movie_results.dart';

class MovieItem extends StatelessWidget {
  final PopularMovieResults item;
  final Map<int, String> base64Images;
  const MovieItem({super.key, required this.item, required this.base64Images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: InkWell(
        onTap: () {
          // print('${item.id}');
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider(
                    create: (_) => MovieDetailViewModel(item.id ?? 0),
                    child: MovieDetails(),
                  ),
              )
          );
        },
        splashColor: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 126.0,
              height: 168.0,
              child: !base64Images.isEmpty ? Image.memory(base64Decode(base64Images[item.id] ?? '')) : Image.network(
                'https://image.tmdb.org/t/p/original/${item.posterPath ?? ''}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title ?? '',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      item.overview ?? '',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }
}