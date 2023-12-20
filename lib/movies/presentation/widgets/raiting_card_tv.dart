import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/img_card.dart';

import '../../domain/model/movie.dart';

class RatingCardTV extends StatefulWidget {
  final Movie movie;
  final int idx;

  const RatingCardTV({
    super.key,
    required this.movie,
    required this.idx,
  });

  @override
  State<RatingCardTV> createState() => _RatingCardTVState();
}

class _RatingCardTVState extends State<RatingCardTV> {
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
            right: 92 / dpr,
            left: (widget.idx == 0) ? (200 / dpr) : 0,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/images/svgs/icon--rating-${widget.idx + 1}.svg',
                  height: 290 / dpr,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 8 / dpr,
                  right: 8 / dpr,
                  top: 8 / dpr,
                ),
                margin: EdgeInsets.only(
                  left: (widget.idx == 9) ? (401 / dpr) : (161 / dpr),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImgCard(
                      marginBottom: 0,
                      isFocused: _isFocused,
                      poster: widget.movie.poster,
                      rating: widget.movie.rating,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
