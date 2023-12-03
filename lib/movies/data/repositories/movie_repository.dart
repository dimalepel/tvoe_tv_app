import 'package:flutter/material.dart';

import '../../domain/model/movie.dart';

class MovieRepository extends ChangeNotifier {
  final List<Movie> _movies = [
    Movie(
      id: '0',
      name: 'Индиана Джонс и колесо судьбы',
      shortDesc:
          'Неувядающий авантюрист и пытливый археолог-исследователь по‑прежнему в седле.',
      poster: '',
      rating: 0,
      logo: 'assets/images/pic--hero-movie-logo.png',
      cover: 'assets/images/pic--hero-movie-cover.png',
      viewsPerWeek: 0,
      genreNames: [],
      isHero: true,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: 'Синий жук',
      shortDesc: '',
      poster: 'assets/images/pic--poster-1.jpg',
      rating: 10,
      logo: '',
      cover: '',
      viewsPerWeek: 0,
      genreNames: ['Новинки'],
      isHero: false,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: 'Домашняя игра',
      shortDesc: '',
      poster: 'assets/images/pic--poster-2.jpg',
      rating: 6.9,
      logo: '',
      cover: '',
      viewsPerWeek: 0,
      genreNames: ['Новинки'],
      isHero: false,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: 'Салют 7',
      shortDesc: '',
      poster: 'assets/images/pic--poster-3.jpg',
      rating: 5.8,
      logo: '',
      cover: '',
      viewsPerWeek: 0,
      genreNames: ['Новинки'],
      isHero: false,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: 'Поймай меня, если сможешь',
      shortDesc: '',
      poster: 'assets/images/pic--poster-4.jpg',
      rating: 7.0,
      logo: '',
      cover: '',
      viewsPerWeek: 0,
      genreNames: ['Новинки'],
      isHero: false,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: 'Поймай меня, если сможешь',
      shortDesc: '',
      poster: 'assets/images/pic--poster-4.jpg',
      rating: 7.0,
      logo: '',
      cover: '',
      viewsPerWeek: 0,
      genreNames: ['Новинки'],
      isHero: false,
      isTop10: false,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-01.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 100,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-02.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 95,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-03.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 90,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-04.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 85,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-05.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 80,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-06.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 75,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-07.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 70,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-08.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 65,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-09.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 60,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
    Movie(
      id: '0',
      name: '',
      shortDesc: '',
      poster: 'assets/images/pic--poster-top-10.jpg',
      rating: 0,
      logo: '',
      cover: '',
      viewsPerWeek: 55,
      genreNames: [],
      isHero: false,
      isTop10: true,
    ),
  ];

  List<Movie> get movies => _movies;

  List<Movie> get newMovies => _movies
      .where((movie) =>
          movie.genreNames.isNotEmpty && movie.genreNames.contains('Новинки'))
      .toList();

  List<Movie> get topTenMovies {
    List<Movie> moviesList =
        _movies.where((movie) => movie.isTop10 && !movie.isHero).toList();

    moviesList.sort((b, a) => a.viewsPerWeek.compareTo(b.viewsPerWeek));

    return moviesList;
  }

  Movie get heroMovie => _movies.firstWhere((movie) => movie.isHero);
}