import 'package:flutter/material.dart';

class ButtonTV extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final Gradient? gradient;

  const ButtonTV({
    super.key,
    required this.label,
    this.margin,
    this.gradient,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return Container(
      width: 243 / dpr,
      height: 80 / dpr,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16 / dpr),
        gradient: gradient,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16 / dpr),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TT Norms Pro',
            fontSize: 30 / dpr,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
