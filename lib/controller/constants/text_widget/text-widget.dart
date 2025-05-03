import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color fontweight;
  double fontsize;
  Color fontcolor;
  TextWidget({super.key,required this.text,required this.fontsize,
    required this.fontcolor,required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,color: fontcolor,fontWeight: fontweight),);
  }
}
