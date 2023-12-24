import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/widgets/custom_text.dart';
import '../../helpers/Colors.dart';
import '../../models/booking.dart';


class ItemBooking extends StatelessWidget {
  Booking booking;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: appBoxShadow,
            color: Colors.white
        ),
        child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                height:120,
                width:120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(booking.imageUrl)
                    )
                ),

              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      LargeText(text: booking.customerName),
                      RichText(text: TextSpan(
                          text: "Booking From : ",style: subtile1,
                          children: [
                            TextSpan(text: booking.bookingFrom,style: subtile2)
                          ]
                      )),
                      RichText(

                          text: TextSpan(
                              text: "Booking to       : ",
                              style: subtile1,
                              children: [
                                TextSpan(text: booking.bookingTo,style: subtile2)
                              ]
                          ))
                    ]      ).marginOnly(left: 5,top: 5),
              ),
              Text(booking.bookingDate).marginOnly(left: 5,top: 10),
            ])

    );
  }

  ItemBooking({
    required this.booking,
  });
}