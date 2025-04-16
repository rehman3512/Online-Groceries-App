import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class TextComponents extends StatelessWidget {
  String text;
   TextComponents({super.key,required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.glory(
        color: App_Colors.whitecolor,fontWeight: FontWeight.w400),);
  }
}
