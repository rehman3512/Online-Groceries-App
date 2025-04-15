import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Stack_class extends StatefulWidget {
  const Stack_class({super.key});

  @override
  State<Stack_class> createState() => _Stack_classState();
}

class _Stack_classState extends State<Stack_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('lib/assets/8140 1.png',),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('lib/assets/Group.png',),
            Text("Welcome"),
            Text("to our store"),
            SizedBox(height: 15,),
            Text("Get your groceries in as fast as one hour")
          ],),
        ],
      ),
    );
  }
}
