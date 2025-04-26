import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.grey,)),
          Expanded(
            child: PageView( children: [
              ExploreScreen(img: Appassets.appleImage,text: "Apple"),
              ExploreScreen(img: Appassets.bananaImage,text: "Banana"),
              ExploreScreen(img: Appassets.beefImage,text: "Beef Bone"),
            ],
            ),
          ),
        ],
      ),
    );
  }
}


class ExploreScreen extends StatelessWidget {
  String text;
  String img;
  ExploreScreen({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Image(image: AssetImage(img)),
        SizedBox(height: 10,),
        Text(text),
      ],
    ),);
  }
}
