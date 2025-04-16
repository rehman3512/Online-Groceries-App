import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('lib/controller/constants/app_assets/rightArowback.png'),
          SizedBox(height: 50,),
          Text("Enter your 4-digit code",style: TextStyle(
              color: App_Colors.blackcolor,fontSize: 26),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Code", style: TextStyle(
                color: App_Colors.greycolor,fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('lib/controller/constants/app_assets/code.png'),
          ),
          SizedBox(height: 100,),
          ListTile( title:  Text("Resend Code",style: TextStyle(
              color: App_Colors.primarycolor,fontSize: 18),),
              trailing: Image.asset('lib/controller/constants/app_assets/leftArowbutton.png')),
        ],),
    );
  }
}
