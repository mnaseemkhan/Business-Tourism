
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/controllers/container_controller.dart';
import 'package:tourism_bussiness/views/layouts/layout_booking.dart';
import 'package:tourism_bussiness/views/layouts/layout_places.dart';
import 'package:tourism_bussiness/views/layouts/layout_profile.dart';
import '../../helpers/Colors.dart';
import '../../widgets/custom_bottomnavybar.dart';

class ScreenHomePage extends StatelessWidget {
  SelectionController selectionController = Get.put(SelectionController());
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          LayoutBooking(),
          LayoutPlaces(),
          LayoutProfile(),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavyBar(
          containerHeight: 55.0,
          backgroundColor: Colors.white,
          selectedIndex: selectionController.selected.value,
          showElevation: false,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            selectionController.selected.value = index;
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeIn);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.home_outlined),
              title: const Text('Booking'),
              activeColor: AppColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.fireplace_sharp),
              title: const Text('Place'),
              activeColor: AppColor,
              textAlign: TextAlign.center,
            ),

            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.account_box),
              title: const Text('Account'),
              activeColor: AppColor,
              textAlign: TextAlign.center,
            ),
          ],
        );
      }),
    );
  }
}
