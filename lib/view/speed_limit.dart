import 'package:flutter/material.dart';
import 'package:flutter_car_dashboard/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpeedLimit extends StatelessWidget {
  const SpeedLimit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/speed.svg",
          height: 32,
          colorFilter: ColorFilter.mode(
            primaryColor,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "100 km/h",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: primaryColor,
              ),
        ),
      ],
    );
  }
}
