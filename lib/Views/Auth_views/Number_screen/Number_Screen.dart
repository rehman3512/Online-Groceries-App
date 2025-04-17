import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Image.asset('assets/leftArowbutton.png'),
          SizedBox(height: 10,),
      ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset('assets/rightArowback.png'),
          ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Enter your mobile num",style: TextStyle(
              color: App_Colors.blackcolor,fontSize: 26,
              fontWeight: FontWeight.w600),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Mobile Number", style: TextStyle(
              color: App_Colors.greycolor,fontSize: 16,
              fontWeight: FontWeight.w600),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
      ],),
    );
  }
}
