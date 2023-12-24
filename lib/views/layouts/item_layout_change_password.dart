import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class ItemLayoutChangePassword extends StatelessWidget {
  const ItemLayoutChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 16,)),
        title: MediumText(text: "Help"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomImage(name: "password",
            height: MediaQuery.of(context).size.height/2.4,),
          SizedBox(height: 15.sp,),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Old password',
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black), // Change this to the desired color
              ),

            ),

          ),
          SizedBox(height: 15.sp,),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'New Password',
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black), // Change this to the desired color
              ),

            ),

          ),
          SizedBox(height: 15.sp,),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black), // Change this to the desired color
              ),

            ),

          ),
          SizedBox(height: 30.sp,),
          CustomButton(
              width: MediaQuery.of(context).size.width/2,
              text: 'Change Password', ontap: (){})
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}
