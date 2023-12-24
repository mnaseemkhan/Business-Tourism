import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/controllers/container_controller.dart';
import 'package:tourism_bussiness/helpers/Colors.dart';
import 'package:tourism_bussiness/views/layouts/item_layout_change_password.dart';
import 'package:tourism_bussiness/views/layouts/item_layout_notification.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';

import '../../widgets/custom_text.dart';

class ScreenSettings extends StatelessWidget {
  SelectionController _controller = Get.put(SelectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 16,)),
        title: MediumText(text: "Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Get.to(ItemLayoutNotification());
            },
            leading: Icon(Icons.notifications_outlined, color: AppColor,),
            title: MediumText(text: "Notification",fontsize: 15,),
            trailing: Obx(() {
              return Switch(
                activeColor: AppColor,
                thumbColor: MaterialStatePropertyAll(Colors.white),
                value: _controller.switchbutton.value,
                onChanged: (value) {
                  // Update the switchValue when the switch is toggled
                  _controller.switchbutton.value = value;
                },
              );
            }),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Get.to(ItemLayoutChangePassword());
            },
            leading: CustomSvg(name: "password"),
            title: MediumText(text: "Change Password",fontsize: 15,),
          ),
          Divider(),
          ListTile(
            leading:CustomSvg(name: "term"),
            title: MediumText(text: "Terms and Conditions",fontsize: 15,),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: AppColor,),
            title: MediumText(text: "Logout",fontsize: 15,),
          ),
        ],
      ),
    );
  }
}
