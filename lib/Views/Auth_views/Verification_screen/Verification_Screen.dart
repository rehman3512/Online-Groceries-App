import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Auth_views/Location_screen/Location%20view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton( onPressed: (){},
                child: Text("Resend Code",style: TextStyle(
                    color: App_Colors.primarycolor,fontSize: 18),),
              ),
            ),
            Spacer(),
            InkWell( onTap: (){
              Get.to(()=>Location_screen());
            }, child: Image.asset('assets/leftArowbutton.png'))
          ],),
      ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell( onTap: (){
              Navigator.pop(context);
            },child: Image.asset('assets/rightArowback.png')),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Enter your 4-digit code",style: TextStyle(
                color: App_Colors.blackcolor,fontSize: 26),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Code", style: TextStyle(
                color: App_Colors.greycolor,fontSize: 16),),
          ),
          //SizedBox(height: 15),
          //Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(

          //      border: OutlineInputBorder(),
               ),
              keyboardType: TextInputType.number,
              // maxLength: 4,
              // validator: (String? value) {
              //   if(value!.length !=4) {
              //     return "please enter a 4-digit code";
              //   }
              //   return null;
              // },
            ),
           ),

        ],),
    );
  }
}
