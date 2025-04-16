import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location_screen extends StatefulWidget {
  const Location_screen({super.key});

  @override
  State<Location_screen> createState() => _Location_screenState();
}

class _Location_screenState extends State<Location_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
        Image.asset("lib/controller/constant/app_assets/illustration.png"),
        SizedBox(height: 30,),
        Text("Select your location",style: GoogleFonts.abel(
          fontSize: 20,fontWeight: FontWeight.w700,
        ),),
        SizedBox(height: 10,),
        Text("swithch on your location to stay in tune with what's happening in your area",
          style: GoogleFonts.actor(
            fontSize: 10,fontWeight: FontWeight.w500,
          ),),
          SizedBox(height: 40,),
          Text("Your Zone"),
          TextFormField(),
          Text("Your Area"),
          TextFormField(),
          SizedBox(height: 20,),
          Container( height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green,
            ),
            child: Center(child: Text("Submit",style: GoogleFonts.abel(
              color: Colors.white,),
            ),),
          ),
          SizedBox(height: 50,),
      ],),
    );
  }
}
