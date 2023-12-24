import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_bussiness/views/layouts/layout_profile.dart';
import 'package:tourism_bussiness/views/screens/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:(context, orientation, deviceType)
    {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home:SplashScreen()
      );;
    });
  }
}

