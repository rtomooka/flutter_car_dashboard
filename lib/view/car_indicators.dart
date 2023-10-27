import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarIndicators extends StatelessWidget {
  const CarIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_left,
            color: Colors.lightGreenAccent,
            size: 32,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/backlight_high.svg",
            height: 32,
            colorFilter: ColorFilter.mode(
              Colors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/backlight_low.svg",
            height: 32,
            colorFilter: ColorFilter.mode(
              Colors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_right,
            color: Colors.grey,
            size: 32,
          ),
        ),
      ],
    );
  }
}
