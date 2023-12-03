import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tvoe_tv_app/core/constants.dart';
import 'package:tvoe_tv_app/movies/data/repositories/movie_repository.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/button_tv_mini.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/hero_container.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/logo.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/raiting_card_tv.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/tv_card_film.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/tv_navigation.dart';

import '../domain/model/movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieAppColors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                // Hero
                Consumer<MovieRepository>(
                  builder: (context, movieRepository, child) {
                    return HeroContainer(
                      movie: movieRepository.heroMovie,
                    );
                  },
                ),
                // New movies
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 110,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 24,
                        ),
                        padding: const EdgeInsets.only(
                          left: 207,
                        ),
                        child: Text(
                          'Новинки',
                          style: MovieTextStyle.mainText,
                        ),
                      ),
                      SizedBox(
                        height: 667,
                        child: Consumer<MovieRepository>(
                          builder: (context, movieRepository, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: movieRepository.newMovies.length,
                              itemBuilder: (_, idx) {
                                Movie movie = movieRepository.newMovies[idx];

                                return TVCardFilm(
                                  movie: movie,
                                  idx: idx,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Top-10
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 110,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 24,
                        ),
                        padding: const EdgeInsets.only(
                          left: 207,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 52,
                              margin: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: SvgPicture.asset(
                                'assets/images/svgs/icon--top-10.svg',
                              ),
                            ),
                            Text(
                              'просмотров за неделю',
                              style: MovieTextStyle.mainText,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 667,
                        child: Consumer<MovieRepository>(
                          builder: (context, movieRepository, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: movieRepository.topTenMovies.length,
                              itemBuilder: (_, idx) {
                                Movie movie = movieRepository.topTenMovies[idx];

                                return RatingCardTV(
                                  movie: movie,
                                  idx: idx,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 55,
              ),
              child: Column(
                children: [
                  const LogoImg(
                    logo: 'assets/images/pic--logo.png',
                  ),
                  TVNavigation(
                    navigation: MovieAppNavigation.navigationIcons,
                    margin: const EdgeInsets.only(
                      bottom: 28,
                    ),
                  ),
                  ButtonTVMini(
                    navigationElement: 'assets/images/svgs/icon--arrow.svg',
                    onTap: () {
                      _scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
