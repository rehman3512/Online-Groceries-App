import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app/Views/Auth_views/Login_screen/Login_Screen.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height: 60,),
          Center(child: Image.asset("assets/red_carrot.png")),
          SizedBox(height: 90,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,
                color: App_Colors.blackcolor,fontSize: 26),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Enter your credentials to continue",
              style: TextStyle(fontSize: 16, color: App_Colors.greycolor),),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Username",style: TextStyle(color: App_Colors.greycolor,
                fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Abd Ur Rehman",style: TextStyle(color: App_Colors.blackcolor,
                fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          Divider(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Email",style: TextStyle(color: App_Colors.greycolor,
                fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 15,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("rehman@gmail.com",style: TextStyle(color: App_Colors.blackcolor,
                  fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset("assets/tick.png"),
            ),
          ],),
          Divider(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Password",style: TextStyle(color: App_Colors.greycolor,
            fontWeight: FontWeight.w600,fontSize: 16),),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("........",style: TextStyle(color: App_Colors.blackcolor,
                  fontWeight: FontWeight.w600,fontSize: 40),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.remove_red_eye_sharp,size: 20,
                color: App_Colors.greycolor,),
            ),
          ],),
          Divider(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("By continuing you agree to our Terms of services and Privacy Policy.",
            style: TextStyle(color: App_Colors.greycolor,
                fontSize: 16,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 30,),
          Center(child: InkWell( onTap: (){
            Get.to(()=>HomeScreen());
          },
            child: Container(height: 55,width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: App_Colors.primarycolor,),
              child: Center(child: Text("Sign Up",style: TextStyle(
                  color: App_Colors.whitecolor,fontSize: 18,
                  fontWeight: FontWeight.w600),),
              ),),
          ),
          ),
          SizedBox(height: 10,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",style: TextStyle(
                  color: App_Colors.blackcolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
              TextButton(onPressed: (){
                Get.to(()=>LoginScreen());
              }, child: Text("signup",style: TextStyle(
                  color: App_Colors.primarycolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ],),
    );
  }
}