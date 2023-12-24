import 'package:flutter/material.dart';
import '../../helpers/Colors.dart';
import '../../widgets/custom_text.dart';
import 'layout_active_booking.dart';
import 'layout_finished_booking.dart';
import 'layout_pending_booking.dart';

class LayoutBooking extends StatelessWidget {
  List<Widget> bookingLayouts = [
    LayoutActiveBooking(),
    LayoutPendingBooking(),
    LayoutFinishedBooking()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(elevation: 0,
            backgroundColor: Colors.white,
            title: LargeText(
              text: "Booking",
            ),
            automaticallyImplyLeading: false,
            actions: [
              Icon(
                Icons.search,
                color: AppColor,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4).withOpacity(0.33),
                    borderRadius: BorderRadius.circular(25)),
                // color: Colors.red,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                      color: AppColor, borderRadius: BorderRadius.circular(25)),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(color: Colors.grey),

                  // indicatorPadding: EdgeInsets.symmetric(vertical:-7,horizontal: 4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [Text("Active"), Text("Pending"), Text("Finished")],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: bookingLayouts,
          ),
        ));
  }
}
