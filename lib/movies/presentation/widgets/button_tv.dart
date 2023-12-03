import 'package:flutter/material.dart';
import 'package:tvoe_tv_app/core/constants.dart';

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
    return Container(
      width: 243,
      height: 80,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: gradient,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          label,
          style: MovieTextStyle.buttonLabel,
        ),
      ),
    );
  }
}
