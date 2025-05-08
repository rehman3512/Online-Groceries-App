import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/alternative_button/alternative-button.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({super.key});

  @override
  State<OrderAccepted> createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Align( alignment: Alignment.center,
           child: Image.asset(Appassets.orderAcceptedImage),
          ),
          SizedBox(height: 50,),
          Align( alignment: Alignment.center,
          child: TextWidget(text: "Your Order has been \n accepted",
              fontsize: 30, fontcolor: App_Colors.blackcolor,
              fontweight: FontWeight.w600),),
          SizedBox(height: 50,),
          TextWidget(text: "Your item has been placed and is on \n it's way to being processsed",
              fontsize: 16, fontcolor: App_Colors.greycolor, fontweight: FontWeight.w400),
          Spacer(),
          AlternativeButton(text: "Track Order"),
          SizedBox(height: 2,),
          Container(height: 65,width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
                color: Colors.grey.shade200,),child: Center(child: TextWidget(
                  text: "Back to home", fontsize: 18, fontcolor: App_Colors.blackcolor,
                  fontweight: FontWeight.w400),)
      ),
          SizedBox(height: 30,),
      ],),
    );
  }
}
