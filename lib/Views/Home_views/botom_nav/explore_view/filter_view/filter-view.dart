import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/alternative_button/alternative-button.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  String groupValue="Eggs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 65,),
          Row(children: [
            SizedBox(width: 10,),
            Icon(Icons.close,size: 30,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 120),
               child: TextWidget(text: "Filters", fontsize: 24,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
             ),
          ],),
          SizedBox(height: 30,),
          Container( height: 700,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Colors.grey.shade200,
            ),
            child: Column(children: [
              SizedBox(height: 20,),
              TextWidget(text: "Categories", fontsize: 30,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Eggs",
                      groupValue: groupValue,
                      onChanged: (value) {
                    groupValue=value.toString();
                    setState(() {

                    });
                  }),
                  Text("Eggs"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Noodles & Pasta",
                      groupValue: groupValue,
                      onChanged: (value){
                    groupValue=value.toString();
                    setState(() {
                    });
                  }),
                  Text("Noodles & Pasta"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Chips & Crisps",
                      groupValue: groupValue,
                      onChanged: (value){
                    groupValue=value.toString();
                    setState(() {

                    });
                  }),
                  Text("Chips & Crisps"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Fast Food",
                      groupValue: groupValue,
                      onChanged: (value){
                    groupValue=value.toString();
                    setState(() {

                    });
                  }),
                  Text("Fast Food")
                ],
              ),
              SizedBox(height: 20,),
              TextWidget(text: "Brand", fontsize: 24,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Indivisual Callection",
                      groupValue: groupValue,
                      onChanged: (value) {
                        groupValue=value.toString();
                        setState(() {

                        });
                      }),
                  Text("Indivisual Callection"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Cocola",
                      groupValue: groupValue,
                      onChanged: (value){
                        groupValue=value.toString();
                        setState(() {
                        });
                      }),
                  Text("Cocola"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Ifad",
                      groupValue: groupValue,
                      onChanged: (value){
                        groupValue=value.toString();
                        setState(() {

                        });
                      }),
                  Text("Ifad"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: App_Colors.primarycolor,
                      value: "Kazi Farmas",
                      groupValue: groupValue,
                      onChanged: (value){
                        groupValue=value.toString();
                        setState(() {

                        });
                      }),
                  Text("Kazi Farmas")
                ],
              ),
              Spacer(),
              AlternativeButton(text: "Apply Filter"),
              SizedBox(height: 30,),
            ],),
          ),
        ],
      ),
    );
  }
}
