import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/Colors.dart';
import '../../widgets/custom_text.dart';

class ItemLayoutNotification extends StatelessWidget {
  const ItemLayoutNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 16,)),
        title: MediumText(text: "Notification"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Container(
            height: 75,
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
              onTap: (){},
              title: Text('Review', style: title2),
              subtitle: Text('Alex Jack give you a review'),
              trailing: Icon(Icons.mail_outline,
                  color: AppColor,),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 75,
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
              onTap: (){},
              title: Text('Booking', style: title2),
              subtitle: Text('You have a new booking from Alex Jack on 07 Dec 2021.'),
              trailing: Icon(Icons.mark_email_read_outlined,
                  color: Colors.grey,),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}
