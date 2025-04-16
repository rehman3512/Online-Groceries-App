import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Location_screen/Location%20view.dart';
import 'package:online_groceries_app/Views/Starting_screen/Onboarding_screen/onboarding.dart';
import 'package:online_groceries_app/Views/Starting_screen/Splash_screen/splash_Screen.dart';


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
      home: onboarding(),
    );
  }
}
