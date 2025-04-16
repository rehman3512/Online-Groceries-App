import 'package:flutter/material.dart';
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
          Image.asset('lib/controller/constants/app_assets/8140 1.png',),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('lib/controller/constants/app_assets/Group.png',),
              Text("Welcome",style: TextStyle(color: App_Colors.whitecolor,
              fontSize: 48,),),
              Text("to ${Apptext.appName}",style: TextStyle(color: App_Colors.whitecolor,fontSize: 48),),
              SizedBox(height: 15,),
              Text("Get your groceries in as fast as one hour",style: TextStyle(
                  color: App_Colors.whitecolor,),),
              Center(child: TextComponents(text: 'hello',),)
            ],),
        ],
      ),
    );
  }
}
