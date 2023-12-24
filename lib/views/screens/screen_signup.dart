import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/views/screens/screen_login.dart';
import 'package:tourism_bussiness/widgets/my_input_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(
          Icons.arrow_back_ios,size: 16,color: Colors.black,)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(alignment: Alignment.topLeft,
              child: LargeText(text: "Signup")),
         SizedBox(height: 20,),
         LargeText(text: "App Logo"),
          SizedBox(height: 20,),
          MediumText(text: "Let’s Get It Started!",fontWeight: FontWeight.w300,),
          SizedBox(height: 10,),
          CustomTextField(
            hintText: 'First Name',
          ),
          CustomTextField(
            hintText: 'Last Name',
          ),
          SizedBox(height: 10,),
          CustomTextField(
            hintText: 'Email',
          ),
          CustomTextField(
            obscureText: true,
            hintText: 'Password',
          ),
          SizedBox(height: 30,),
          CustomButton(text: "Signup", ontap: (){
            Get.to(ScreenHomePage());
          }),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  height: 37,
                  width: MediaQuery.of(context).size.width/2.5,
                  buttoncolor: Color(0xff365194),
                  text: "Facebook", ontap: (){}),
              CustomButton(
                  height: 37,
                  width: MediaQuery.of(context).size.width/2.5,
                  buttoncolor: Colors.black,
                  text: "Google", ontap: (){})
            ],
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(text: "Already have an account",textColor: Colors.grey,),
              TextButton(onPressed: (){
                Get.off(LoginScreen());
              }, child: SmallText(
                text: "Login",textColor: Color(0xff2FB8A6),
              ))
            ],
          ).paddingOnly(bottom: 20)
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
