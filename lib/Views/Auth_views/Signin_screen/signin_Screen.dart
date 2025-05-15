import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Number_screen/Number_Screen.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset('assets/vigitable.png'),
              Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                      child: Image.asset('assets/carrot.png'),
                    ),
            ],),
            ],),
            ],),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Get your groceries",style: TextStyle(fontSize: 26,
                  color: App_Colors.blackcolor,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("with nector",style: TextStyle(fontSize: 26,
                color: App_Colors.blackcolor,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 25,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
             child: InternationalPhoneNumberInput(onInputChanged: (value){
               print("Country Code${value.isoCode}");
               print("Phone Number${value.phoneNumber}");
             },
               selectorConfig: SelectorConfig(
                 selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
               ),
               ignoreBlank: false,
               autoValidateMode: AutovalidateMode.disabled,
               selectorTextStyle: TextStyle(color: App_Colors.blackcolor),
               initialValue: PhoneNumber(isoCode: 'Pk'),
               formatInput: false,
               keyboardType: TextInputType.numberWithOptions(signed: true,
               decimal: true),
               inputDecoration: InputDecoration(
             //    hintText: "Phone number",
               ),
             ),
            ),
            SizedBox(height: 30),
            Center(child: Text("Or connect with social media",style: TextStyle(
                fontSize: 14,color: App_Colors.darkgreycolor),),),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell( onTap: (){
                Get.to(()=>NumberScreen());
              },
                child: Container(height: 55,width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: App_Colors.lightblueColor,

                  ),
                  child: Center(child: Text("Continue with Google",style: TextStyle(
                    color: App_Colors.whitecolor,fontSize: 16,),),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell( onTap: (){
                Get.to(()=>NumberScreen());
              },
                child: Container(height: 55,width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: App_Colors.darkblueColor,

                  ),
                  child: Center(child: Text("Continue with Facebook",style: TextStyle(
                    color: App_Colors.whitecolor,fontSize: 16,),),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
