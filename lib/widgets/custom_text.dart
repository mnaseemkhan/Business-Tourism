import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  double? fontsize;
  FontWeight? fontWeight;
  String? fontfamily;
  Color? textColor;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: textAlign,
    style: TextStyle(
      fontWeight: fontWeight?? FontWeight.w400,
      fontSize: fontsize?? 12,color: textColor?? Colors.black,fontFamily: fontfamily
    ),);
  }

  SmallText({
    required this.text,
    this.fontsize,
    this.fontWeight,
    this.textColor,
    this.textAlign,
    this.fontfamily
  });
}
class MediumText extends StatelessWidget {
  String text;
  double? fontsize;
  FontWeight? fontWeight;
  Color? textColor;
  TextAlign? textAlign;
  String? fontfamily;
  @override
  Widget build(BuildContext context) {
    return  Text(text,textAlign: textAlign,
      style: TextStyle(
          fontWeight: fontWeight?? FontWeight.w600,
          fontSize: fontsize?? 18,color: textColor?? Colors.black,fontFamily: fontfamily
      ),);;
  }

  MediumText({
    required this.text,
    this.fontsize,
    this.fontWeight,
    this.textColor,
    this.textAlign,
    this.fontfamily
  });
}

class LargeText extends StatelessWidget {
  String text;
  double? fontsize;
  FontWeight? fontWeight;
  Color? textColor;
  TextAlign? textAlign;
  String? fontfamily;
  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: textAlign,
      style: TextStyle(
          fontWeight: fontWeight?? FontWeight.w600,
          fontSize: fontsize?? 24,color: textColor?? Colors.black,fontFamily: fontfamily
      ),);
  }

  LargeText({
    required this.text,
    this.fontsize,
    this.fontWeight,
    this.textColor,
    this.textAlign,
    this.fontfamily
  });
}


