import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class CalculationScreen extends StatelessWidget {
  CalculationScreen({super.key});

  CalculationController obj=Get.put(CalculationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(children: [
        SizedBox(height: 50,),
        FloatingActionButton(onPressed: (){
          obj.add();
        },child: Icon(Icons.add,color: App_Colors.whitecolor,),
          backgroundColor: App_Colors.darkblueColor,),
        SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          obj.sub();
        },child: Icon(Icons.remove,color: App_Colors.whitecolor,),
          backgroundColor: App_Colors.darkblueColor,),
        SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          obj.div();
        },child: TextWidget(text: "/", fontsize: 24, fontcolor: App_Colors.whitecolor,
            fontweight: FontWeight.w600), backgroundColor: App_Colors.darkblueColor,),
        SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          obj.mul();
        },child: TextWidget(text: "X", fontsize: 24, fontcolor: App_Colors.whitecolor,
    fontweight: FontWeight.w600),backgroundColor: App_Colors.darkblueColor,),
        SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          obj.mod();
        },child: Icon(Icons.percent,color: App_Colors.whitecolor,),
          backgroundColor: App_Colors.darkblueColor,),
        SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          obj.ref();
        },child: Icon(Icons.refresh,color: App_Colors.whitecolor,),
          backgroundColor: App_Colors.darkblueColor,)
      ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container( height: 50,width: 50,
            child: TextFormField(
              controller: CalculationController().num1Controller,
              decoration: InputDecoration(
                hintText: "Enter first number",
                hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,
                color: App_Colors.blackcolor)
              ),
            ),
          ),
          Container( height: 50,width: 50,
            child: TextFormField(
              controller: CalculationController().num2Controller,
              decoration: InputDecoration(
                  hintText: "Enter second number",
                  hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,
                      color: App_Colors.blackcolor)
              ),
            ),
          ),
          Obx(()=>Text("Total=${obj.total.value}")),
        ],
      ),
    );
  }
}



class CalculationController extends GetxController{
  TextEditingController  num1Controller=TextEditingController();
  TextEditingController  num2Controller=TextEditingController();
  var total=0.obs;
  var num1=0.obs;
  var num2=0.obs;

  add()
  {
    total.value=num1.value+num2.value;
  }
  sub()
  {
    total.value=num1.value-num2.value;
  }
  mul()
  {
    total.value=num1.value*num2.value;
  }
  div()
  {
    if(num2.value!=0)
      {
        total.value=(num1.value/num2.value).toInt();
      }
    else
    {
      total.value=0;
    }
  }
  mod()
  {
    if(num2.value!=0)
      {
        total.value=num1.value%num2.value;
      }
    else
      {
        total.value=0;
      }
  }
  ref()
  {
    total.value=0;
  }

}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
//
// class Addition extends StatelessWidget {
//   Addition({super.key});
//
//   AdditionCotroller obj=Get.put(AdditionCotroller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Column(children: [
//         FloatingActionButton(onPressed: (){
//           obj.inc();
//         },child: Icon(Icons.add, color: App_Colors.whitecolor,),),
//         FloatingActionButton(onPressed: (){
//           obj.dec();
//         },child: Icon(Icons.remove,color: App_Colors.whitecolor,),),
//         FloatingActionButton(onPressed: (){
//           obj.ref();
//         },child: Icon(Icons.refresh,color: App_Colors.whitecolor,),)
//       ],),
//       body: Column(children:[
//         Obx(()=> Text('${obj.count.value}')),
//         Obx(()=>Switch(value: obj.isSwitched.value, onChanged: (value){
//           obj.isSwitched.value=value;
//         })),
//         Obx(()=>Switch(value: obj.isSwitched2.value, onChanged: (value){
//           obj.isSwitched2.value=value;
//         }))
//       ]),
//     );
//   }
// }
//
//
// class AdditionCotroller extends GetxController {
//   var count=0.obs;
//   var isSwitched=false.obs;
//   var isSwitched2=false.obs;
//   inc()
//   {
//     count.value++;
//   }
//   dec()
//   {
//     if(count.value!=0)
//       {
//         count.value--;
//       }
//   }
//   ref()
//   {
//     count.value=0;
//   }
//
// }