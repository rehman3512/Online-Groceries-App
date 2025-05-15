import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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

  bool isSecure = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isFormValid = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  void validateForm() {
    setState(() {
      isFormValid = emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    });
  }

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
                  color: App_Colors.greycolor,fontSize: 16,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                      color: App_Colors.blackcolor,fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),style: TextStyle( color: App_Colors.blackcolor,fontSize: 20,
                  fontWeight: FontWeight.w600),
              ),
              Divider(),
              SizedBox(height: 30,),
              Text("Password",style: TextStyle(color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordController,
                obscureText: isSecure,
                obscuringCharacter: ".",
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                        color: App_Colors.greycolor,fontSize: 20,
                        fontWeight: FontWeight.w400),
                    suffixIcon: IconButton(onPressed: (){
                      isSecure = !isSecure;
                      setState(() {

                      });
                    }, icon: Icon(isSecure? Icons.visibility_off_outlined : Icons.visibility_outlined ,
                      color: App_Colors.greycolor,),)
                ),style: TextStyle( color: App_Colors.greycolor,fontSize: 22,
                  fontWeight: FontWeight.w600),
              ),
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
              Center(child: InkWell( onTap: isFormValid? (){
                Get.to(()=>BottomNav());
              } :null,
                child: Container(height: 55,width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: isFormValid? App_Colors.primarycolor :
                    App_Colors.greycolor,),
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
