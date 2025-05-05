import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  final String image;
  final String mainText;
  final String priceText;
  final String description;
  const ProductView({super.key,required this.image,required this.mainText,
  required this.priceText,required this.description});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container( height: 371,width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
        ),child: Center(child: Image(image: AssetImage(widget.image),),
          ),),
        Text(widget.mainText),
        Text(widget.priceText),
        Text(widget.description),
      ],),
    );
  }
}
