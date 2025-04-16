import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset('lib/controller/constants/app_assets/vigitable.png'),
            Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                    child: Image.asset('lib/controller/constants/app_assets/carrot.png'),
                  ),
          ],),
          ],),
          ],),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Get your groceries",style: TextStyle(fontSize: 26,color: App_Colors.blackcolor),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("with nector",style: TextStyle(fontSize: 26,color: App_Colors.blackcolor),),
          ),
          SizedBox(height: 25,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset('lib/controller/constants/app_assets/flag.png'),
          ),
          SizedBox(height: 40),
          Center(child: Text("Or connect with social media",style: TextStyle(
              fontSize: 14,color: App_Colors.darkgreycolor),),),
          SizedBox(height: 40,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('lib/controller/constants/app_assets/google.png'),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('lib/controller/constants/app_assets/facebook.png'),
          ),
        ],
      ),
    );
  }
}
