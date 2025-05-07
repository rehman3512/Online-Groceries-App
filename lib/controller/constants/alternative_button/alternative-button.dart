import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class AlternativeButton extends StatelessWidget {
  String text;
   AlternativeButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 65,width: 350,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
      color: App_Colors.primarycolor,
    ),child: Center(child: TextWidget(text: text, fontsize: 18,
            fontcolor: App_Colors.whitecolor, fontweight: FontWeight.w400),)
    );
  }
}
