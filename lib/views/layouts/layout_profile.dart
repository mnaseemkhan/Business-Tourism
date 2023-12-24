import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_bussiness/helpers/Colors.dart';
import 'package:tourism_bussiness/views/screens/screen_help.dart';
import 'package:tourism_bussiness/views/screens/screen_my_account.dart';
import 'package:tourism_bussiness/views/screens/screen_settings.dart';
import 'package:tourism_bussiness/widgets/custom_curved_container.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';
import 'package:tourism_bussiness/widgets/custom_text.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Color(0xff43EFD8),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, color: Colors.black),
          )
        ],
      ),
      body: Stack(
         children: [
           Column(
             children: [
               Container(
                 height: 200,
                 width: Get.width,
                 decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage('assets/images/container.png'),
                         fit: BoxFit.fill)),
                 child: Center(child: LargeText(text: "App Logo")),
               ),
               SizedBox(height: 10.h,),
               Container(
                 height: 49,
                 width: Get.width,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(5),
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(1, 1),
                         blurRadius: 5,
                         color: Colors.grey.withOpacity(0.5),
                       )
                     ]),
                 child: ListTile(
                   onTap: (){Get.to(ScreenMyAccount());},
                   leading: Icon((Icons.account_circle_outlined), color: AppColor),
                   title: Text('My Account', style: title3),
                   trailing: Icon(Icons.arrow_forward_ios,
                       color: Colors.black, size: 16),
                 ),
               ).paddingSymmetric(horizontal: 20),
               SizedBox(height: 20,),
               Container(
                 height: 49,
                 width: Get.width,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(5),
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(1, 1),
                         blurRadius: 5,
                         color: Colors.grey.withOpacity(0.5),
                       )
                     ]),
                 child: ListTile(
                   onTap: (){Get.to(ScreenSettings());},
                   leading: Icon((Icons.settings_outlined), color: AppColor),
                   title: Text('Settings', style: title3),
                   trailing: Icon(Icons.arrow_forward_ios,
                       color: Colors.black, size: 16),
                 ),
               ).paddingSymmetric(horizontal: 20),
               SizedBox(height: 20,),
               Container(
                 height: 49,
                 width: Get.width,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(5),
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(1, 1),
                         blurRadius: 5,
                         color: Colors.grey.withOpacity(0.5),
                       )
                     ]),
                 child: ListTile(
                   leading:CustomSvg(name: "like"),
                   title: Text('My Ratings', style: title3),
                   trailing: Icon(Icons.arrow_forward_ios,
                       color: Colors.black, size: 16),
                 ),
               ).paddingSymmetric(horizontal: 20),
               SizedBox(height: 20,),
               Container(
                 height: 49,
                 width: Get.width,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(5),
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(1, 1),
                         blurRadius: 5,
                         color: Colors.grey.withOpacity(0.5),
                       )
                     ]),
                 child: ListTile(
                   onTap: (){
                     Get.to(ScreenHelp());
                   },
                   leading: CustomSvg(name: "question"),
                   title: Text('Help', style: title3),
                   trailing: Icon(Icons.arrow_forward_ios,
                       color: Colors.black, size: 16),
                 ),
               ).paddingSymmetric(horizontal: 20),
               SizedBox(height: 20,),
             ],
           ),
           Positioned(
             top: 130,
             left: 20, // Center horizontally
             child: ClipOval(
               child: CustomImage(name: "girl"),
             ),
           ),
         ],
      ),
    );
  }
}
