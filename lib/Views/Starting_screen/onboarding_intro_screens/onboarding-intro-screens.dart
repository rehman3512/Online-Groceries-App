import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';

class Onboarding_Intro_Screens extends StatefulWidget {
  const Onboarding_Intro_Screens({super.key });

  @override
  State<Onboarding_Intro_Screens> createState() => _Onboarding_Intro_ScreensState();
}

class _Onboarding_Intro_ScreensState extends State<Onboarding_Intro_Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.grey,)),
          Expanded(
            child: PageView( children: [
              TestScreens(img: Appassets.appleImage,text: "Apple"),
              TestScreens(img: Appassets.bananaImage,text: "Banana"),
              TestScreens(img: Appassets.beefImage,text: "Beef Bone"),
            ],
            ),
          ),
        ],
      ),
    );
  }
}



class TestScreens extends StatelessWidget {
  String text;
  String img;
  TestScreens({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(
      children: [
        Image(image: AssetImage(img)),
        SizedBox(height: 10,),
        Text(text),
      ],
    ),);
  }
}
