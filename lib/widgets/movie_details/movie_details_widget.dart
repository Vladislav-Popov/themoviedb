import 'package:flutter/material.dart';

import 'movie_details_info_widget.dart';
import 'movie_details_main_screen_cast_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;

  const MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);

  @override
  _MovieDetailsWidgetState createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Squid Game'),
      ),
      body: ColoredBox(
        color: Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: [
            MovieDetailsInfoWidget(),
            SizedBox(height: 50),
            MovieDetailsMainScreenCastWidget(),
          ],
        ),
      ),
    );
  }
}
