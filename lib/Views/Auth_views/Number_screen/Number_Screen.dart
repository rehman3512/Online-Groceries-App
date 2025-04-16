import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('lib/controller/constants/app_assets/rightArowback.png'),
        SizedBox(height: 50,),
        Text("Enter your mobile num",style: TextStyle(
            color: App_Colors.blackcolor,fontSize: 26),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Mobile Number", style: TextStyle(
              color: App_Colors.greycolor,fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset('lib/controller/constants/app_assets/flag.png'),
        ),
          Image.asset('lib/controller/constants/app_assets/leftArowbutton.png'),
      ],),
    );
  }
}
