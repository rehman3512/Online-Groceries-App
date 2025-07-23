import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  int count=0;
  CounterController obj=Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        children: [
          FloatingActionButton(onPressed: (){
            obj.inc();
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){
            obj.dec();
          },child: Icon(Icons.remove),),
          FloatingActionButton(onPressed: (){
            obj.ref();
          },child: Icon(Icons.refresh),),
        ],
      ),
      body: Center(child: Column(
        children: [
          Obx(()=>Text("${obj.counter}"),),
          Obx(()=> Switch(value: obj.isSwitched.value, onChanged: (value){
              obj.isSwitched.value=value;
            }),
          ),
          Obx(()=> Switch(value: obj.isSwitched2.value, onChanged: (value){
              obj.isSwitched2.value=value;
            }),
          ),
          Obx(()=> Switch(value: obj.isSwitched3.value, onChanged: (value){
              obj.isSwitched3.value=value;
            }),
          ),
          Obx(()=> Switch(value: obj.isSwitched4.value, onChanged: (value){
              obj.isSwitched4.value=value;
            }),
          )
        ],
      )),
    );
  }
}

class CounterController extends GetxController{
  var counter=0.obs;
  var isloading=false.obs;
  var isSwitched=false.obs;
  var isSwitched2=false.obs;
  var isSwitched3=false.obs;
  var isSwitched4=false.obs;
  inc()
  {
    counter.value++;
  }
  dec()
  {
    if(counter>0)
      {
        counter.value--;
      }
  }
  ref()
  {
    counter.value=0;
  }
}