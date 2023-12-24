import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/Colors.dart';


class CustomButton extends StatelessWidget {
double? height;
double?width;
String text;
Color? textcolor;
Color? buttoncolor;
VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: height??45,
        width: width??Get.width,
        decoration: BoxDecoration(
          color: buttoncolor??AppColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [BoxShadow(offset: Offset(1, 1),color: Colors.grey.withOpacity(.5),blurRadius: 5)]
        ),
        child: Text(text,style: TextStyle(color:textcolor?? Colors.white,fontSize: 18,
        fontWeight: FontWeight.w600),),
      ),
    );
  }

CustomButton({
  this.height,
  this.width,
  this.buttoncolor,
  this.textcolor,
  required this.text,
  required this.ontap,
});
}
