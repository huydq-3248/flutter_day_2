import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_day_2/models/movie_detail/movie_detail.dart';
import 'package:flutter_day_2/triangle.dart';
import 'package:flutter_day_2/view_model/movie_detail_view_model.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'gen/assets.gen.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    MovieDetailViewModel movieDetailViewModel = context.watch<MovieDetailViewModel>();

    MovieDetail movieDetail = movieDetailViewModel.movieDetail;
    print((movieDetail.voteAverage ?? 0) % 1 == 0 ? movieDetail.voteAverage?.toString() ?? '' : movieDetail.voteAverage?.toStringAsFixed(1) ?? '');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        title: const Text(
          'Movie Detail',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: SizedBox(
                height: 240,
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpHi-uiEUrMh0PPV6rElNze16VWBKWRtYZ2w&usqp=CAU',
                          'https://image.tmdb.org/t/p/original/${movieDetail.backdropPath ?? ''}',
                          fit: BoxFit.cover,
                        ),
                        CustomPaint(
                          painter: Triangle(),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 16,
                      bottom: 12,
                      child: SizedBox(
                        width: 120.0,
                        height: 160.0,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/original/${movieDetail.posterPath ?? ''}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                        movieDetail.title ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                  SizedBox(
                    width: 20,
                    child: CircularPercentIndicator(
                      radius: 16.0,
                      animation: true,
                      animationDuration: 1000,
                      lineWidth: 4.0,
                      percent: double.parse(movieDetail.voteAverage?.toStringAsFixed(1) ?? '0') * 0.1,
                      center: Text(
                        (movieDetail.voteAverage ?? 0) % 1 == 0 ? movieDetail.voteAverage?.toString() ?? '' : movieDetail.voteAverage?.toStringAsFixed(1) ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Color(0xff9e9e9e),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: const Color(0xff9e9e9e),
                      progressColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Color(0xffd3d1d1),
                    width: 1.5,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Assets.images.reviewIcon.image(
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(height: 4.0),
                        const Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 180),
                    Column(
                      children: [
                        Assets.images.trailerIcon.image(
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(height: 4.0),
                        const Text(
                          'Trailers',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d1d1),
                    width: 1.5,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Genre',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          movieDetail.genres?.fold<String>('', (previousValue, element) {
                            if (previousValue == '') {
                              return '${element.name}';
                            } else {
                              return '$previousValue\n${element.name}';
                            }
                          }) ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 130),
                    Column(
                      children: [
                        Text(
                          'Release',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          movieDetail.releaseDate ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                movieDetail.overview ?? '',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}