import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/img_card.dart';

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
            right: 44,
            left: (widget.idx == 0) ? 200 : 0,
          ),
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImgCard(
                marginBottom: 20,
                isFocused: _isFocused,
                poster: widget.movie.poster,
                rating: widget.movie.rating,
              ),
              Text(
                widget.movie.name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontFamily: 'TT Norms Pro',
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
