import 'package:flutter/material.dart';

class CurrentSpeed extends StatelessWidget {
  const CurrentSpeed({
    super.key,
    required this.speed,
  });

  final int speed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white10.withOpacity(0.0),
            ],
          ).createShader(
            Rect.fromLTRB(
              0,
              0,
              bounds.width,
              bounds.height,
            ),
          ),
          child: Text(
            "$speed",
            style: const TextStyle(
              fontSize: 96,
              fontWeight: FontWeight.w500,
              height: 0.96,
            ),
          ),
        ),
        const Text(
          "km/h",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white30,
          ),
        ),
      ],
    );
  }
}
