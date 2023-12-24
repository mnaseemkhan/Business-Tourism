import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  String name;
  double? height;
  double ?width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/icons/$name.svg',height: height,width: width,
      );
  }

  CustomSvg({
    required this.name,
     this.height,
     this.width,
  });
}
