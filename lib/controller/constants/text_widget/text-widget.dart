import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color fontcolor;
  final FontWeight? fontweight;
  const TextWidget({super.key,required this.text,required this.fontsize,
    required this.fontcolor,required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,color: fontcolor,fontWeight: fontweight),);
  }
}
