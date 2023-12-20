import 'package:flutter/material.dart';

class LogoImg extends StatelessWidget {
  final String logo;

  const LogoImg({
    super.key,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Container(
      margin: EdgeInsets.only(
        bottom: 110 / dpr,
        top: 40 / dpr,
      ),
      child: Image.asset(
        logo,
        width: 32 / dpr,
        height: 50 / dpr,
        fit: BoxFit.contain,
      ),
    );
  }
}
