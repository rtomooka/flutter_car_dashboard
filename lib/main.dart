import 'package:flutter/material.dart';
import 'package:flutter_car_dashboard/view/my_paint.dart';

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
      debugShowCheckedModeBanner: true,
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
        child: size.width > 1184 && size.height > 604
            ? Container(
                color: Colors.blueGrey,
                constraints: BoxConstraints(
                  maxWidth: 1480,
                  minWidth: 1184,
                  maxHeight: 604,
                  minHeight: 604,
                ),
                child: AspectRatio(
                  aspectRatio: 2.59,
                  child: CustomPaint(
                    painter: MyPaint(),
                  ),
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
