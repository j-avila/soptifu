import 'package:flutter/material.dart';

class WavedBorderWidget extends StatelessWidget {
  Color bColor = Colors.white;
  WavedBorderWidget(this.bColor, {super.key});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveBorder(),
      child: Container(height: 80, color: bColor),
    );
  }
}

class WaveBorder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.5, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.5, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
