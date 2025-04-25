import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Signin_screen/signin_Screen.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/apptext/apptext.dart';

import '../../../controller/widgets/text_components/text_components.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ImageIcon(AssetImage(Appasset.appIconlogo),color: App_Colors.primarycolor,),
          //Image.asset(Appasset.appIconlogo,color: App_Colors.primarycolor,),
          Positioned( top: 0,left: 0,
              child: Image.asset('assets/8140 1.png',fit: BoxFit.fill,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Group.png',),
              SizedBox(height: 10,),
              Text("Welcome",style: TextStyle(color: App_Colors.whitecolor,
              fontSize: 48,),),
              Text("to our store",style: TextStyle(color: App_Colors.whitecolor,fontSize: 48),),
              SizedBox(height: 10,),
              Text("Get your groceries in as fast as one hour",style: TextStyle(
                  color: App_Colors.greyColor,fontSize: 16),),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InkWell( onTap: (){
                  Get.to(()=>Signin_Screen());
                },
                  child: Container(height: 55,width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: App_Colors.primarycolor,
                  
                  ),
                    child: Center(child: Text("Get Started",style: TextStyle(
                        color: App_Colors.whitecolor,fontSize: 18,),),),
                  ),
                ),
              ),
              SizedBox(height: 60,),
            ],),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Signin_screen/signin_Screen.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/apptext/apptext.dart';

import '../../../controller/widgets/text_components/text_components.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ImageIcon(AssetImage(Appasset.appIconlogo),color: App_Colors.primarycolor,),
          //Image.asset(Appasset.appIconlogo,color: App_Colors.primarycolor,),
          Positioned( top: 0,left: 0,
              child: Image.asset('assets/8140 1.png',fit: BoxFit.fill,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Group.png',),
              SizedBox(height: 10,),
              Text("Welcome",style: TextStyle(color: App_Colors.whitecolor,
                fontSize: 48,),),
              Text("to our store",style: TextStyle(color: App_Colors.whitecolor,fontSize: 48),),
              SizedBox(height: 10,),
              Text("Get your groceries in as fast as one hour",style: TextStyle(
                  color: App_Colors.greyColor,fontSize: 16),),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InkWell( onTap: (){
                  Get.to(()=>Signin_Screen());
                },
                  child: Container(height: 55,width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: App_Colors.primarycolor,

                    ),
                    child: Center(child: Text("Get Started",style: TextStyle(
                      color: App_Colors.whitecolor,fontSize: 18,),),),
                  ),
                ),
              ),
              SizedBox(height: 60,),
            ],),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Signin_screen/signin_Screen.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/apptext/apptext.dart';

import '../../../controller/widgets/text_components/text_components.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ImageIcon(AssetImage(Appasset.appIconlogo),color: App_Colors.primarycolor,),
          //Image.asset(Appasset.appIconlogo,color: App_Colors.primarycolor,),
          Positioned( top: 0,left: 0,
              child: Image.asset('assets/8140 1.png',fit: BoxFit.fill,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Group.png',),
              SizedBox(height: 10,),
              Text("Welcome",style: TextStyle(color: App_Colors.whitecolor,
                fontSize: 48,),),
              Text("to our store",style: TextStyle(color: App_Colors.whitecolor,fontSize: 48),),
              SizedBox(height: 10,),
              Text("Get your groceries in as fast as one hour",style: TextStyle(
                  color: App_Colors.greyColor,fontSize: 16),),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InkWell( onTap: (){
                  Get.to(()=>Signin_Screen());
                },
                  child: Container(height: 55,width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: App_Colors.primarycolor,

                    ),
                    child: Center(child: Text("Get Started",style: TextStyle(
                      color: App_Colors.whitecolor,fontSize: 18,),),),
                  ),
                ),
              ),
              SizedBox(height: 60,),
            ],),
        ],
      ),
    );
  }
}
