import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvoe_tv_app/core/movies_app.dart';
import 'package:tvoe_tv_app/movies/data/repositories/movie_repository.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MoviesApp(),
    create: (_) => MovieRepository(),
  ));
}
