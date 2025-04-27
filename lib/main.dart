import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Location_screen/Location%20view.dart';
import 'package:online_groceries_app/Views/Auth_views/Number_screen/Number_Screen.dart';
import 'package:online_groceries_app/Views/Auth_views/Signin_screen/signin_Screen.dart';
import 'package:online_groceries_app/Views/Auth_views/Signup_screen/signup_screen.dart';
import 'package:online_groceries_app/Views/Auth_views/Verification_screen/Verification_Screen.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Starting_screen/Onboarding_screen/onboarding.dart';
import 'package:online_groceries_app/Views/Starting_screen/Splash_screen/splash_Screen.dart';
import 'package:online_groceries_app/Views/Auth_views/Login_screen/Login_Screen.dart';
import 'package:online_groceries_app/Views/Starting_screen/onboarding_intro_screens/onboarding-intro-screens.dart';
import 'package:online_groceries_app/Views/gridview.dart';
import 'package:online_groceries_app/password.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExploreView(),
    );
  }
}
