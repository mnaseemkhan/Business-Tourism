import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_splash1.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImage(name: "first").paddingOnly(top: 70),
                LargeText(
                  text: "Tourism",
                  textColor: Color(0xff2FB8A6),
                ),
                Spacer(),
                CustomButton(text: "Get Started", ontap: () {
                  Get.to(Splash1());
                }).paddingSymmetric(horizontal: 40),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Already have an account",
                      textColor: Colors.white,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SmallText(
                          text: "Login",
                          textColor: Colors.white,
                        ))
                  ],
                ).paddingOnly(bottom: 30),
              ],
            )));
  }
}
