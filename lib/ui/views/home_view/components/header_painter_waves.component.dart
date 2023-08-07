import 'package:flutter/material.dart';

class HeaderPaintWaves extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    final path = Path();
    path.lineTo(0, 130);
    path.quadraticBezierTo(size.width * 0.25, 180, size.width * 0.5, 120);
    path.quadraticBezierTo(size.width * 0.75, 50, size.width, 80);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
