import 'package:custom_paint/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom paint',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CustomPaint(
              // need to define parent size to paint
              size: MediaQuery.of(context).size,
              painter: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}

class FlutterLogo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
// defile canvas stroke design

    Paint paint = Paint()
      ..strokeWidth = 2
      ..color = AppColors.white;

    final height = size.height;

    final width = size.width;

    /// 1 single verticle line -------
    canvas.drawLine(Offset(width * .1, height * 0.08),
        Offset(width * .1, height * 0.46), paint);

    /// 2. lets add some horizontal line to start move to make [F] latter
    canvas.drawLine(Offset(width * .1, height * 0.46),
        Offset(width * .2, height * 0.46), paint);

    /// 3. now move our latter to little up
    canvas.drawLine(Offset(width * .2, height * 0.46),
        Offset(width * .2, height * 0.3), paint);

    /// 4. now move our latter stroke to little horizontal
    canvas.drawLine(Offset(width * .5, height * 0.3),
        Offset(width * .2, height * 0.3), paint);

    /// 4. now lets move our line to up little
    canvas.drawLine(Offset(width * .4, height * 0.3),
        Offset(width * .5, height * 0.25), paint);

    /// 5. now lets move our line to little closer to start line
    canvas.drawLine(Offset(width * .5, height * 0.25),
        Offset(width * .2, height * 0.25), paint);

    /// 6. now again move path to little up
    canvas.drawLine(Offset(width * .2, height * 0.12),
        Offset(width * .2, height * 0.25), paint);

    /// 7. now make some horizontal move
    canvas.drawLine(Offset(width * .2, height * 0.12),
        Offset(width * .7, height * 0.12), paint);

    /// 8.

    canvas.drawLine(Offset(width * .6, height * 0.12),
        Offset(width * .7, height * 0.08), paint);

    /// 9. End of line

    canvas.drawLine(Offset(width * .7, height * 0.08),
        Offset(width * .1, height * 0.08), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
