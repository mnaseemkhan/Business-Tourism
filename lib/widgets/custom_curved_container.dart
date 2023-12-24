import 'package:flutter/material.dart';
import '../helpers/Colors.dart';

class CurvedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set your desired background color
      child: ClipPath(
        clipper: BottomCurveClipper(),
        child: Container(
          height: 150.0, // Set your desired height
          width: double.infinity,
          color: AppColor, // Set your desired container color
          child: Center(
            child: Text(
              'Curved Container',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0, size.height+20);
    path.quadraticBezierTo(size.width/4, 3 * (size.height/2), 3* (size.width/4),
        size.height/2, );
    path.lineTo(size.width, 0);
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}