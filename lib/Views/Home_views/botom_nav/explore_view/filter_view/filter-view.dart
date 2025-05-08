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
  bool option1=false;
  bool option2=false;
  bool option3=false;
  bool option4=false;
  bool option5=false;
  bool option6=false;
  bool option7=false;
  bool option8=false;
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
                  Checkbox(
                    activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option1,
                      onChanged: ((value){
                        option1=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Eggs",style: TextStyle(
                    color: option1? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option2,
                      onChanged: ((value){
                        option2=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Noodles & Pasta",style: TextStyle(
                    color: option2? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option3,
                      onChanged: ((value){
                        option3=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Chips & Crisps",style: TextStyle(
                    color: option3? App_Colors.primarycolor : App_Colors.blackcolor,),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option4,
                      onChanged: ((value){
                        option4=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Fast Food",style: TextStyle(
                    color: option4? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),)
                ],
              ),
              SizedBox(height: 20,),
              TextWidget(text: "Brand", fontsize: 24,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option5,
                      onChanged: ((value){
                        option5=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Indivisual Callection",style: TextStyle(
                    color: option5? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option6,
                      onChanged: ((value){
                        option6=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Cocola",style: TextStyle(
                    color: option6? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option7,
                      onChanged: ((value){
                        option7=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Ifad",style: TextStyle(
                    color: option7? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: App_Colors.primarycolor,
                      checkColor: App_Colors.whitecolor,
                      value: option8,
                      onChanged: ((value){
                        option8=value!;
                        setState(() {

                        });
                      })
                  ),
                  Text("Kazi Farmas",style: TextStyle(
                    color: option8? App_Colors.primarycolor : App_Colors.blackcolor,
                  ),)
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
