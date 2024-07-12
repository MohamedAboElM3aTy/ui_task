import 'package:flutter/material.dart';

class OverLappingSquaresPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    // * First Square
    drawRotatedSquare(
      canvas,
      centerX,
      centerY,
      size.width * 0.5,
      paint,
      1 / 2,
    );

    drawRotatedSquare(
      canvas,
      centerX,
      centerY,
      size.width * 0.5,
      paint,
      1,
    );

    drawRotatedSquare(
      canvas,
      centerX,
      centerY,
      size.width * 0.5,
      paint,
      -1.5,
    );
  }

  void drawRotatedSquare(
    Canvas canvas,
    double centerX,
    double centerY,
    double size,
    Paint paint,
    double rotation,
  ) {
    canvas.save();
    canvas.translate(centerX, centerY);
    canvas.rotate(rotation);
    canvas.translate(-centerX, -centerY);

    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(centerX, centerY),
        width: size,
        height: size,
      ),
      paint,
    );

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
