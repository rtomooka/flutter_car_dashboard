import 'package:flutter/material.dart';
import 'package:flutter_car_dashboard/constants.dart';

class TimeAndTemp extends StatelessWidget {
  const TimeAndTemp({
    super.key,
    required this.boxConstraints,
  });

  final BoxConstraints boxConstraints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxConstraints.maxWidth * 0.21,
      height: boxConstraints.maxHeight * 0.11,
      child: Row(
        children: [
          Text("05:21 PM"),
          Spacer(),
          Icon(
            Icons.sunny,
            color: Colors.amberAccent,
          ),
          SizedBox(
            width: defaultPadding / 4,
          ),
          Text("18 ℃"),
        ],
      ),
    );
  }
}
