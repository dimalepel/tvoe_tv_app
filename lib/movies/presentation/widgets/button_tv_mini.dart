import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonTVMini extends StatefulWidget {
  final String navigationElement;
  final Function()? onTap;

  const ButtonTVMini({
    super.key,
    required this.navigationElement,
    this.onTap,
  });

  @override
  State<ButtonTVMini> createState() => _ButtonTVMiniState();
}

class _ButtonTVMiniState extends State<ButtonTVMini> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final double dpr = MediaQuery.of(context).devicePixelRatio;

    return InkWell(
      onTap: widget.onTap,
      onFocusChange: (bool value) {
        setState(() {
          _isFocused = value;
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (_isFocused)
            Positioned(
              width: 124 / dpr,
              height: 124 / dpr,
              top: -40 / dpr,
              left: -40 / dpr,
              child: Image.asset(
                'assets/images/pic--blur-layout.png',
                width: 124 / dpr,
                height: 124 / dpr,
              ),
            ),
          SvgPicture.asset(
            widget.navigationElement,
            width: 44 / dpr,
            height: 44 / dpr,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
