import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Center(child: Image.asset("assets/red_carrot.png")),
          Text("Home",style: TextStyle(fontWeight: FontWeight.w600,
              color: App_Colors.blackcolor,fontSize: 26),),
          Text("Enter your emails and password",style: TextStyle(fontSize: 16,
              color: App_Colors.greycolor),),
          SizedBox(height: 20,),
          Text("Email",style: TextStyle(color: App_Colors.greycolor,fontSize: 16),),
          Text("rehman@gmail.com"),
          Divider(),
          SizedBox(height: 10,),
          Text("Password",style: TextStyle(color: App_Colors.greycolor),),
          Divider(),
          TextButton(onPressed: (){}, child: Text("Forgot Password?",
            style: TextStyle(color: App_Colors.blackcolor),
          ),),
          SizedBox(height: 20,),
          Center(child: Container(height: 55,width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: App_Colors.primarycolor,),
            child: Center(child: Text("Log in",style: TextStyle(
                color: App_Colors.whitecolor,fontSize: 18),),
            ),),
          ),
          SizedBox(height: 10,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("don't have an account?"),
              TextButton(onPressed: (){
              }, child: Text("sign up",
                style: TextStyle(color: App_Colors.primarycolor),)),
            ],
          ),
        ],),
    );
  }
}
