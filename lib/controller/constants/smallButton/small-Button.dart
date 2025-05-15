import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class smallButton extends StatelessWidget {
  final String text;
  const smallButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      TextWidget(text: text, fontsize: 16, fontcolor: App_Colors.blackcolor,
          fontweight: FontWeight.w600),
      Spacer(),
      Container(height: 35,width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: App_Colors.primarycolor,), child: Center(
           child: Icon(Icons.add, color: App_Colors.whitegreycolor,),)
          ),
    ],);
  }
}
