import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/img_card.dart';

import '../../../core/utils.dart';
import '../../domain/model/movie.dart';

class TVCardFilm extends StatefulWidget {
  final Movie movie;
  final int idx;

  const TVCardFilm({
    super.key,
    required this.movie,
    required this.idx,
  });

  @override
  State<TVCardFilm> createState() => _TVCardFilmState();
}

class _TVCardFilmState extends State<TVCardFilm> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return InkWell(
      onTap: () {},
      child: FocusableActionDetector(
        onFocusChange: (bool value) {
          setState(() {
            _isFocused = value;
          });
        },
        child: Container(
          margin: EdgeInsets.only(
            right: 22 / dpr,
            left: (widget.idx == 0) ? (200 / dpr) : 0,
          ),
          padding: EdgeInsets.only(
            left: 8 / dpr,
            right: 8 / dpr,
            top: 8 / dpr,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImgCard(
                marginBottom: 20 / dpr,
                isFocused: _isFocused,
                poster: widget.movie.poster,
                rating: widget.movie.rating,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 4 / dpr,
                ),
                child: Text(
                  widget.movie.name,
                  textAlign: TextAlign.left,
                  style: Utils.getTextStyle(28, dpr),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
