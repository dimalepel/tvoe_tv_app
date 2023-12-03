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
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        navigationElement,
      ),
    );
  }
}
