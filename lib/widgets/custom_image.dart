import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  String name;
  BoxFit? boxFit;
  double? height, width;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/images/$name.png",),fit: boxFit,
    height: height,width: width,);
  }

  CustomImage({
    required this.name,
    this.boxFit,
    this.height,
    this.width
  });
}
