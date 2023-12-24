import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';

import '../../widgets/custom_text.dart';

class ScreenHelp extends StatelessWidget {
  const ScreenHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
          SizedBox(height: 20.sp,),
          Container(
            height: MediaQuery.of(context).size.height*.5,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(offset: Offset(1, 1),blurRadius: 5,color: Colors.grey.withOpacity(.6))]
            ),
            child: Column(
              children: [
                SizedBox(height: 10.sp,),
                LargeText(text: 'Enter Details'),
                SizedBox(height: 15.sp,),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Your Name',
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
                    hintText: 'Your Email',
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
                  cursorColor: Colors.black,maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Description',
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
                    text: 'Send', ontap: (){})

              ],
            ).paddingSymmetric(horizontal: 20),
          ).paddingSymmetric(horizontal: 10),
          SizedBox(height: 20.sp,),
          Divider(),
          SizedBox(height: 10.sp,),
          LargeText(text: 'We Are Available On'),
          SizedBox(height: 10.sp,),
          Row(
            children: [
              CustomSvg(name: 'world'),
              SizedBox(width: 10,),
              SmallText(text: 'www.Tourism.com')
            ],
          ),SizedBox(height: 10.sp,),
          Row(
            children: [
              CustomSvg(name: 'gmail'),
              SizedBox(width: 10,),
              SmallText(text: 'tourism07@gmail.com')
            ],
          ),
          SizedBox(height: 10.sp,),
          Row(
            children: [
              CustomSvg(name: 'call'),
              SizedBox(width: 10,),
              SmallText(text: '+1-98765433456')
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 10),
    );
  }
}
