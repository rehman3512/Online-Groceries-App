import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Login_screen/Login_Screen.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

import '../../Home_views/HomeScreen.dart';

class Location_screen extends StatefulWidget {
  const Location_screen({super.key});

  @override
  State<Location_screen> createState() => _Location_screenState();
}

class _Location_screenState extends State<Location_screen> {

  final TextEditingController zoneController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  bool isFormValid = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    zoneController.addListener(validateForm);
    areaController.addListener(validateForm);
  }

  void validateForm() {
    setState(() {
      isFormValid = zoneController.text.isNotEmpty &&
          areaController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Center(child: Image.asset("assets/illustration.png")),
            SizedBox(height: 30,),
            Center(
              child: Text("Select your location",style: TextStyle(
                color: App_Colors.blackcolor,
                fontSize: 26,fontWeight: FontWeight.w600,
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text("swithch on your location to stay in tune with what's happening in your area",
                style: TextStyle( color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600,
                ),),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Your Zone",style: TextStyle(
                  color: App_Colors.greycolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
            ),
            ListTile(title: TextFormField(
              controller: zoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                hintText: "Enter your zone",
                hintStyle:  TextStyle(
                    color: App_Colors.blackcolor,fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),style: TextStyle( color: App_Colors.blackcolor,fontSize: 20,
                fontWeight: FontWeight.w600),
            ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Your Area",style: TextStyle(
                  color: App_Colors.greycolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
            ),
            ListTile(title: TextFormField(
              controller: areaController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Types of your area",
                hintStyle: TextStyle(
                    color: App_Colors.greycolor,fontSize: 18,
                    fontWeight: FontWeight.w400),
              ), style: TextStyle( color: App_Colors.greycolor,fontSize: 20,
                fontWeight: FontWeight.w600),
            ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
            SizedBox(height: 30,),
            InkWell( onTap: isFormValid? (){
              Get.to(()=>LoginScreen());
            }: null,
              child: Container( height: 55,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: isFormValid? App_Colors.primarycolor:
                  App_Colors.greycolor,
                ),
                child: Center(child: Text("Submit",style: TextStyle(
                    color: App_Colors.whitecolor,fontSize: 16,
                    fontWeight: FontWeight.w600),
                ),),
              ),
            ),
            SizedBox(height: 50,),
          ],),
      ),
    );
  }
}
