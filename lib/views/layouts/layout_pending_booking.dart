import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class LayoutPendingBooking extends StatelessWidget {
  const LayoutPendingBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,

        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.only(top: 20),
              height: 80,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(offset: Offset(1, 1),
                        blurRadius: 8,
                        color: Colors.grey)
                  ]
              ),
              child: Row(
                children: [
                  CustomImage(name: 'girl'),
                  Column(
                    children: [
                      LargeText(text: 'Person Name'),
                      RichText(
                          text: TextSpan(
                              text: "Booking from:",
                              recognizer: TapGestureRecognizer(),
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: "   19 Aug, 2021",),

                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Booking to:",
                              recognizer: TapGestureRecognizer(),
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: "   24 Aug, 2021",),

                              ]
                          )
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: SmallText(
                        text: '03 Dec, 2021', textColor: Colors.grey,))
                ],
              )
          );
        }
    ).paddingSymmetric(horizontal: 10);
  }
}