import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism_bussiness/views/screens/screen_login.dart';
import 'package:tourism_bussiness/views/screens/screen_signup.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class Splash1 extends StatelessWidget {
  final controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        CustomImage(name: "2nd",
        height: MediaQuery.of(context).size.height/2.4,),
        SizedBox(height: 40,),
        LargeText(text: "Grow Your Business"),
        SizedBox(height: 10,),
        SmallText(text: "Provide best deal and services to grow your\nbusiness..",
          textColor: Colors.grey,textAlign: TextAlign.center,),
          Spacer(),
          CustomButton(text: "Login", ontap: (){
            Get.to(LoginScreen());
          }),
          SizedBox(height: 30,),
          CustomButton(text: "Create Account",
              textcolor: Colors.black,buttoncolor: Color(0xffFFFFFF),
              ontap: (){
            Get.to(SignupScreen());
              }).paddingOnly(bottom: 50)
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
