import 'package:flutter/material.dart';

Color AppColor = Color(0xFF2FB8A6);


TextStyle heading1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 26,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle heading2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle heading3 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 22,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle title1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle title2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle title3 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle subtile1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 14,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle subtile2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 12,
    color: Colors.black,
    fontFamily: "Kailasa");


TextStyle subtile3 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 10,
    color: Colors.black,
    fontFamily: "Kailasa");


Decoration roundedDec = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: AppColor,
);

BoxShadow myShadow = BoxShadow(color: Colors.red);
List<BoxShadow> appBoxShadow = [BoxShadow(blurRadius: 6, color: Color(0x414D5678))];