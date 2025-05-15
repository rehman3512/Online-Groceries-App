import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Login_screen/Login_Screen.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool isSecure = true;

  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isFormValid = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userController.addListener(validateForm);
    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  void validateForm(){
    setState(() {
      isFormValid = userController.text.isNotEmpty &&
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: SingleChildScrollView(
        child: Column(
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
                  fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: userController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                      color: App_Colors.greycolor,fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),style: TextStyle( color: App_Colors.blackcolor,fontSize: 20,
                  fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Email",style: TextStyle(color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                      color: App_Colors.greycolor,fontSize: 18,
                      fontWeight: FontWeight.w400),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/tick.png',
                    ),),
                ),style: TextStyle( color: App_Colors.blackcolor,fontSize: 20,
                  fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Password",style: TextStyle(color: App_Colors.greycolor,
              fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
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
            ),
            Divider(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("By continuing you agree to our Terms of services and Privacy Policy.",
              style: TextStyle(color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 30,),
            Center(child: InkWell( onTap: isFormValid?(){
              Get.to(()=>BottomNav());
            } : null,
              child: Container(height: 55,width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: isFormValid? App_Colors.primarycolor:
                  App_Colors.greycolor,),
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
                }, child: Text("login",style: TextStyle(
                    color: App_Colors.primarycolor,fontSize: 16,
                    fontWeight: FontWeight.w600),),
                ),
              ],
            ),
          ],),
      ),
    );
  }
}