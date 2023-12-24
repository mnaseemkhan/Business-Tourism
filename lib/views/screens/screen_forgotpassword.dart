import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_verification.dart';
import 'package:tourism_bussiness/widgets/my_input_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(
          Icons.arrow_back_ios,size: 16,color: Colors.black,)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeText(text: "Forgot Password"),
          SizedBox(height: 15,),
          SmallText(text: "Enter your email to recover your password ",textColor: Color(0xff646464),),
          CustomTextField(
            hintText: 'Email',
          ).paddingOnly(top: 60),
          CustomButton(text: "Send", ontap: (){
            Get.to(ScreenVerification());
          }).paddingOnly(top: 50)
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
