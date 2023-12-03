import 'package:flutter/material.dart';

class LogoImg extends StatelessWidget {
  final String logo;

  const LogoImg({
    super.key,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 110,
        top: 40,
      ),
      child: Image.asset(
        logo,
        width: 32,
        height: 50,
        fit: BoxFit.contain,
      ),
    );
  }
}
