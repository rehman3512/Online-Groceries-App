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

  final TextEditingController codeController = TextEditingController();
  bool isFormValid = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    codeController.addListener(validateForm);
  }

  void validateForm() {
    setState(() {
      isFormValid = codeController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
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
            InkWell( onTap: isFormValid? (){
              Get.to(()=>Location_screen());
            }: null, child: Image.asset('assets/leftArowbutton.png'))
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
              controller: codeController,
              keyboardType: TextInputType.number,
              style: TextStyle( color: App_Colors.blackcolor,fontSize: 20,
                  fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                hintText: "Enter your code",
                hintStyle:  TextStyle(
                    color: App_Colors.blackcolor,fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
           ),

        ],),
    );
  }
}
