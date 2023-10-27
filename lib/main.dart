import 'package:flutter/material.dart';
import 'package:flutter_car_dashboard/constants.dart';
import 'package:flutter_car_dashboard/view/car_indicators.dart';
import 'package:flutter_car_dashboard/view/hmi_shape_painter.dart';
import 'package:flutter_car_dashboard/view/time_and_temp.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        child: size.width > 1184 && size.height > 456
            ? Container(
                margin: const EdgeInsets.all(16),
                // color: Colors.blueGrey,
                constraints: BoxConstraints(
                  maxWidth: 1480,
                  minWidth: 1184,
                  maxHeight: 604,
                  minHeight: 456,
                ),
                child: AspectRatio(
                  aspectRatio: 2.59,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return CustomPaint(
                      painter: HmiShapePainter(),
                      child: Column(
                        children: [
                          TimeAndTemp(boxConstraints: constraints),
                          Expanded(
                              child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: defaultPadding * 1.25,
                                  ),
                                  CarIndicators(),
                                ],
                              )
                            ],
                          )),
                        ],
                      ),
                    );
                  }),
                ),
              )
            : const Center(
                child: Text(
                  'Screen is too small to show the UI',
                ),
              ),
      ),
    );
  }
}
