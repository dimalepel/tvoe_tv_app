import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonTVMini extends StatelessWidget {
  final String navigationElement;
  final Function()? onTap;

  const ButtonTVMini({
    super.key,
    required this.navigationElement,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        navigationElement,
        width: 44 / dpr,
        height: 44 / dpr,
        fit: BoxFit.contain,
      ),
    );
  }
}
