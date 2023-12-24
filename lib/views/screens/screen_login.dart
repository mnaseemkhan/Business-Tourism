import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_forgotpassword.dart';
import 'package:tourism_bussiness/views/screens/screen_signup.dart';
import 'package:tourism_bussiness/widgets/my_input_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: LargeText(text: "Login")),
          SizedBox(height: 20,),
          LargeText(text: "App Logo",fontfamily: "Rufina_400",),
          SizedBox(height: 20,),
          MediumText(text: "Welcome back!",fontWeight: FontWeight.w300,),
          SizedBox(height: 10,),
          CustomTextField(
            hintText: 'Email',
          ),
          SizedBox(height: 10,),
          CustomTextField(
            obscureText: true,
            hintText: 'Psssword',
          ),
          Align(alignment: Alignment.topRight,
              child: TextButton(onPressed: (){
                Get.to(ForgotPasswordScreen());
              }, child: SmallText(text: "Forgot Password?",))),
          SizedBox(height: 30,),
          CustomButton(text: "Login", ontap: (){}),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: SizedBox()),
              Expanded(
                  flex: 2,
                  child: Divider(color: Colors.grey,)),
              SmallText(text: "or"),
              Expanded(
                  flex: 2,
                  child: Divider(color: Colors.grey,)),
              Expanded(child: SizedBox()),
            ],
          ),
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
              SmallText(text: "Don’t have an account",textColor: Colors.grey,),
              TextButton(onPressed: (){
                Get.to(SignupScreen());
              }, child: SmallText(
                text: "Signup",textColor: Color(0xff2FB8A6),
              ))
            ],
          ).paddingOnly(bottom: 20)
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
