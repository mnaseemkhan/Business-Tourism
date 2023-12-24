import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_bussiness/helpers/Colors.dart';
import 'package:tourism_bussiness/widgets/custom_text.dart';

import '../../widgets/custom_image.dart';

class ScreenMyAccount extends StatelessWidget {
  const ScreenMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Get.back();},
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 16,)),
        title: MediumText(text: "My Account"),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h,),
          ClipOval(child: CustomImage(name: "account",),),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SmallText(text: "Name",textColor: Colors.grey,),
            TextButton(onPressed: (){}, child: SmallText(text: "Edit",textColor: AppColor,)),

          ],).paddingSymmetric(horizontal: 10),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Atif Javed',
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Color(0xff1b1b1b),fontSize: 15,
                  fontWeight: FontWeight.w600),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black), // Change this to the desired color
              ),

            ),

          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallText(text: "Email",textColor: Colors.grey,),
              TextButton(onPressed: (){}, child: SmallText(text: "Edit",textColor: AppColor,)),
            ],).paddingSymmetric(horizontal: 10),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'abc123@gmail.com',
              contentPadding: EdgeInsets.all(8),
              hintStyle: TextStyle(color: Color(0xff1b1b1b),fontSize: 15,),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black), // Change this to the desired color
              ),

            ),

          ),
        ],
      ),
    );
  }
}
