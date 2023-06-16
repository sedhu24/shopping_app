// CustomPainter class to for the header curved-container
import 'package:flutter/material.dart';

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color.fromARGB(255, 255, 255, 255);
    Path path = Path();

    path.moveTo(0, size.height / 3);

    path.quadraticBezierTo(size.width / 2, 10, size.width, size.height / 3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
