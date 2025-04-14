import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/View/Auth_view/Location_view/Location%20view.dart';
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
      home: Location_screen(),
    );
  }
}
