import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Starting_screen/Onboarding_screen/onboarding.dart';
import '../../../controller/constants/app_color/app_colors.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({super.key});

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5,),(){
      Get.to(()=>onboarding());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: App_Colors.primarycolor,
        body: Center(child: Image.asset('lib/controller/constants/app_assets/splash_logo.png'),)
    );
  }
}