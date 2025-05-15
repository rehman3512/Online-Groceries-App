import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/controller/constants/alternative_button/alternative-button.dart';
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

  int rating = 0; // Default rating is 0 (no stars selected)

  bool isFavorited = false;

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
      body: SingleChildScrollView(
        child: Column(children: [
          Container( height: 371,width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          ),child: Center(child: Image(image: AssetImage(widget.image,),
              height: 200,fit: BoxFit.contain,),
            ),),
          SizedBox(height: 5,),
          ListTile(
            title: TextWidget(text: widget.mainText, fontsize: 28,
                fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
            subtitle: TextWidget(text: widget.subText, fontsize: 16,
                fontcolor: App_Colors.greycolor, fontweight: FontWeight.w600),
            trailing: IconButton(onPressed: (){
              setState(() {
                isFavorited = !isFavorited;
              });
            }, icon: Icon( isFavorited?Icons.favorite : Icons.favorite_border,
                  color: isFavorited ? Colors.pink : Colors.grey,)),
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
              Container(height: 40,width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: App_Colors.whitecolor,
                border: Border.all(color: Colors.grey.shade400)
              ),child: Center(child: Text("$value"),),),
              IconButton(onPressed: (){
                value++;
                price=price+price1;
                setState(() {

                });
              }, icon: Icon(Icons.add,
                color: App_Colors.primarycolor,)),
              Spacer(),
              TextWidget(text: "\$${price.toStringAsFixed(2)}", fontsize: 24,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400),
              SizedBox(width: 10,),
            ],),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextWidget(text: "Product Details", fontsize: 16,
                        fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(height: 10,),
                TextWidget(text: widget.description, fontsize: 13,
                    fontcolor: App_Colors.greycolor, fontweight: FontWeight.w400),
              ],
            ),
          ),
          Divider(),
          Row(children: [
            SizedBox(width: 10,),
            TextWidget(text: "Neutrition", fontsize: 18, fontcolor: App_Colors.blackcolor,
                fontweight: FontWeight.w600),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
            SizedBox(width: 10,)
          ],),
          Divider(),
          Row(children: [
            SizedBox(width: 7,),
            TextWidget(text: "Review", fontsize: 18, fontcolor: App_Colors.blackcolor,
                fontweight: FontWeight.w600),
            Spacer(),
            ...List.generate(5, (index) {
              return IconButton(
                icon: Icon(
                  Icons.star,
                  color: index < rating ? Colors.amber : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    rating = index + 1;
                  });
                },
              );
            }),
            SizedBox(width: 5,),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
            SizedBox(width: 7,)
          ],),
          SizedBox(height: 20,),
          GestureDetector( onTap: (){
            Get.back();
          },
              child: AlternativeButton(text: "Add To Basket")),
        ],),
      ),
    );
  }
}
