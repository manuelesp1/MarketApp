import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomPaint(
            size: Size(
                600,
                (600 * 1.6625)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 243, 126, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0050000, 0);
    path_0.quadraticBezierTo(size.width * 0.4158000, size.height * 0.1478496,
        size.width * 0.4250000, size.height * 0.4812030);
    path_0.quadraticBezierTo(size.width * 0.4187000, size.height * 0.8308722, 0,
        size.height * 0.9969925);
    path_0.lineTo(size.width * 0.0050000, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
