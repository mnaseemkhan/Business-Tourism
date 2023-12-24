import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final IconData? prefixicon;
  final IconData? sufixicon;
  final bool? obscureText;
  final Color? color;
  final Color? textcolor;
  final Color? hintcolor;
  final BorderRadius? borderRadius;
  final Widget? suffix;
  final bool? isPasswordField;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
              color: color??Colors.white,
              borderRadius: borderRadius??BorderRadius.circular(25),
            boxShadow: [BoxShadow(offset: Offset(1, 1),color: Colors.grey.withOpacity(0.4),blurRadius: 5)]
          ),
          height: 45,
          //padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            style: TextStyle(color: textcolor??Colors.grey,),
            cursorColor: hintcolor??Colors.grey,
            controller: controller,
            obscureText: obscureText??false,
            //keyboardType: keyboardtype?? TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: hintText,contentPadding: EdgeInsets.symmetric(horizontal: 20,
                vertical: 14),
              suffixIcon: Icon(sufixicon,),
              hintStyle: TextStyle(color: hintcolor??Colors.grey,),
              //prefixIcon: Icon(icon),
              border: InputBorder.none,
              suffix: suffix,
            ),
          ),
        )
      ],
    );
  }

  const CustomTextField({
    this.controller,
    this.label,
    this.hintText,
    this.prefixicon,
    this.sufixicon,
    this.obscureText,
    this.color,
    this.textcolor,
    this.hintcolor,
    this.borderRadius,
    this.suffix,
    this.isPasswordField,
  });
}