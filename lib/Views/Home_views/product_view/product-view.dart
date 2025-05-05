import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class ProductView extends StatefulWidget {
  final String image;
  final String mainText;
  final String subText;
  final String priceText;
  final String description;
  const ProductView({super.key,required this.image,required this.mainText,
  required this.subText,required this.priceText,required this.description});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  double price=0;
  double price1=0;
  int value=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    price=double.parse(widget.priceText);
    price1=double.parse(widget.priceText);
  }
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
        ),child: Center(child: Image(image: AssetImage(widget.image,),),
          ),),
        ListTile(
          title: TextWidget(text: widget.mainText, fontsize: 24,
              fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400),
          subtitle: TextWidget(text: widget.subText, fontsize: 16,
              fontcolor: App_Colors.greycolor, fontweight: FontWeight.w600),
          trailing: Icon(Icons.favorite_border),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            IconButton(onPressed: (){
              if(value>1)
                {
                  value--;
                  price=price-price1;
                }
              setState(() {

              });
            }, icon: Icon(Icons.remove,
              color: App_Colors.greycolor,)),
            Container(height: 35,width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: App_Colors.whitecolor,
              border: Border.all(color: App_Colors.greyColor)
            ),child: Center(child: Text("$value"),),),
            IconButton(onPressed: (){
              value++;
              price=price+price1;
              setState(() {

              });
            }, icon: Icon(Icons.add,
              color: App_Colors.primarycolor,)),
            Spacer(),
            TextWidget(text: "$price", fontsize: 24,
                fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)
          ],),
        ),
        Text(widget.description),
      ],),
    );
  }
}
