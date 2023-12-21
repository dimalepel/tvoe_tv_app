import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/movies/presentation/widgets/button_tv_mini.dart';

class TVNavigation extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final List<String> navigation;

  const TVNavigation({
    super.key,
    this.margin,
    required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Container(
      margin: EdgeInsets.only(
        bottom: 24 / dpr,
      ),
      child: Column(
        children: [
          for (String nav in navigation) ...[
            Container(
              margin: margin,
              child: ButtonTVMini(
                navigationElement: nav,
                onTap: () {},
              ),
            ),
          ]
        ],
      ),
    );
  }
}
