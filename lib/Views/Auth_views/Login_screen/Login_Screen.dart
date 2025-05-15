import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Signup_screen/signup_screen.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Center(child: Image.asset("assets/red_carrot.png")),
              SizedBox(height: 30,),
              Text("Loging",style: TextStyle(fontWeight: FontWeight.w600,
                  color: App_Colors.blackcolor,fontSize: 22),),
              SizedBox(height: 10,),
              Text("Enter your emails and password",
                style: TextStyle(fontSize: 16,
                    color: App_Colors.greycolor,fontWeight: FontWeight.w600),),
              SizedBox(height: 30,),
              Text("Email",style: TextStyle(
                  color: App_Colors.greycolor,fontSize: 16),),
              SizedBox(height: 20,),
              Text("rehman@gmail.com",style: TextStyle(
                  color: App_Colors.blackcolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
              Divider(),
              SizedBox(height: 30,),
              Text("Password",style: TextStyle(color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600),),
              Row(children: [
                TextWidget(text: ".........", fontsize: 30, fontcolor: App_Colors.blackcolor,
                    fontweight: FontWeight.w600),
                Spacer(),
                Icon(Icons.visibility_off_outlined,color: App_Colors.greycolor,),
              ],),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text("Forgot Password?",
                    style: TextStyle(color: App_Colors.blackcolor,
                        fontWeight: FontWeight.w600,fontSize: 14),
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Center(child: InkWell( onTap: (){
                Get.to(()=>BottomNav());
              },
                child: Container(height: 55,width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: App_Colors.primarycolor,),
                  child: Center(child: Text("Log in",style: TextStyle(
                      color: App_Colors.whitecolor,fontSize: 18),),
                  ),),
              ),
              ),
              SizedBox(height: 20,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account?",style: TextStyle(color: App_Colors.blackcolor,
                      fontWeight: FontWeight.w600,fontSize: 16),),
                  TextButton(onPressed: (){
                    Get.to(()=>SignupScreen());
                  }, child: Text("signup",
                    style: TextStyle(color: App_Colors.primarycolor,
                        fontWeight: FontWeight.w600,fontSize: 16),)),
                ],
              ),
            ],),
          )
      ),
    );
  }
}




// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children:[
// SizedBox(height: 60,),
// Center(child: Image.asset("assets/red_carrot.png")),
// SizedBox(height: 90,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Text("Loging",style: TextStyle(fontWeight: FontWeight.w600,
// color: App_Colors.blackcolor,fontSize: 26),),
// ),
// SizedBox(height: 10,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Text("Enter your emails and password",
// style: TextStyle(fontSize: 16,
// color: App_Colors.greycolor,fontWeight: FontWeight.w600),),
// ),
// SizedBox(height: 30,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Text("Email",style: TextStyle(
// color: App_Colors.greycolor,fontSize: 16),),
// ),
// SizedBox(height: 20,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Text("rehman@gmail.com",style: TextStyle(
// color: App_Colors.blackcolor,fontSize: 16,
// fontWeight: FontWeight.w600),),
// ),
// Divider(),
// SizedBox(height: 30,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Text("Password",style: TextStyle(color: App_Colors.greycolor,
// fontSize: 16,fontWeight: FontWeight.w600),),
// ),
// SizedBox(height: 20,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Row(children: [
// TextFormField(
// decoration: InputDecoration(
//
// labelText: "enter your password",
// ),
// ),
// Spacer(),
// Icon(Icons.remove_red_eye_sharp,color: App_Colors.greycolor,),
// ],),
// ),
// Divider(),
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextButton(onPressed: (){}, child: Text("Forgot Password?",
// style: TextStyle(color: App_Colors.blackcolor,
// fontWeight: FontWeight.w600,fontSize: 16),
// ),),
// ],
// ),
// SizedBox(height: 20,),
// Center(child: InkWell( onTap: (){
// Get.to(()=>HomeScreen());
// },
// child: Container(height: 55,width: 340,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// color: App_Colors.primarycolor,),
// child: Center(child: Text("Log in",style: TextStyle(
// color: App_Colors.whitecolor,fontSize: 18),),
// ),),
// ),
// ),
// SizedBox(height: 20,),
// Row( mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text("don't have an account?",style: TextStyle(color: App_Colors.blackcolor,
// fontWeight: FontWeight.w600,fontSize: 16),),
// TextButton(onPressed: (){
// Get.to(()=>SignupScreen());
// }, child: Text("signup",
// style: TextStyle(color: App_Colors.primarycolor,
// fontWeight: FontWeight.w600,fontSize: 16),)),
// ],
// ),
// ],),