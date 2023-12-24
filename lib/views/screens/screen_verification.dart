import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';
import 'package:tourism_bussiness/widgets/custom_text.dart';

class ScreenVerification extends StatelessWidget {
  const ScreenVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomImage(name: "verification",
            height: MediaQuery.of(context).size.height/2.5,
          width: Get.width,),
          LargeText(text: "Verification"),
          MediumText(text: "Enter the OTP code sent to your email",fontWeight: FontWeight.w400,
          fontsize: 15,).paddingOnly(top: 10),
          Pinput(
            length: 4,
            defaultPinTheme: PinTheme(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  offset: Offset(1,1),color: Colors.grey.withOpacity(0.4),blurRadius: 5)]
              ),
              textStyle: TextStyle(color: Colors.grey),
            ),
          ).paddingOnly(top: 50),
          MediumText(text: "Did not receive a code?",textColor: Colors.grey,).paddingOnly(top: 40),
          TextButton(onPressed: (){}, child: MediumText(text: "RESEND",textColor: Color(0xff2FB8A6),
          fontWeight: FontWeight.w700,)),
          CustomButton(text: "Done", ontap: (){
            Get.to(ScreenHomePage());
          })
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
