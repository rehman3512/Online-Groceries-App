import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool isHide=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10)
          ),
          child: TextFormField(
            obscureText: isHide,
            decoration: InputDecoration(
              hintText: "Enter Password",
              suffixIcon: IconButton(onPressed: (){
                if(isHide==true){ isHide=false; }
                else { isHide=true; }
                setState(() {

                });
              },
                  icon: isHide? Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye)),
            ),
          ),
        )
      ],),
    );
  }
}
