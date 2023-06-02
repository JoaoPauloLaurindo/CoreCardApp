import 'package:flutter/material.dart';

class CustomClipperBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();

    path.moveTo(0, h * 0.9);
    path.lineTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h * 0.9);
    path.quadraticBezierTo(w * 0.665, h * 1, w * 0.5, h);
    path.quadraticBezierTo(w * 0.333, h * 1, 0, h * 0.9);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
