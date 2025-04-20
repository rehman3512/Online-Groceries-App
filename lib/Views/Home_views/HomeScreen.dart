import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/exclusive-offer-model.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';

import 'botom_nav/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <ExclusiveOfferModel> exclusiveOfferList= [
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
      mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs Prices", priceText: "4.99"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 60,),
        Center(child: Image.asset("assets/homelogo.png"),),
        SizedBox(height: 10),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [ Icon(Icons.location_on),
          Text("Dhaka Banasara",style: TextStyle(
              color: App_Colors.blackcolor,fontSize: 16,
              fontWeight: FontWeight.w400),),
        ],),
        SizedBox(height: 20),
        Container(
          height: 50,margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: App_Colors.whitegreycolor,
        ),child: Center(
          child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search Store",hintStyle: TextStyle(
                fontWeight: FontWeight.w400,fontSize: 16,
                color: App_Colors.greycolor,
              ),
              ),),
        ),
        ),
        SizedBox( height: 20,),
        Padding( padding: EdgeInsets.symmetric( horizontal: 20),
         child: Image.asset("assets/homebanner.png"),
        ),
        SizedBox( height: 10),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Exclusive Offer",style: TextStyle(
                  color: App_Colors.blackcolor,fontSize: 26,
                  fontWeight: FontWeight.w400),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(onPressed:(){},child: Text("See all",
                style: TextStyle(color: App_Colors.primarycolor,fontSize: 16,
                    fontWeight: FontWeight.w400),),
              ),),
          ],),
             Expanded(
               child: ListView.builder(itemCount: exclusiveOfferList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                           return Container(
                             padding: EdgeInsets.all(12),
                             margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()
                ),
                child: Column(
                    children: [
                    Image.asset(exclusiveOfferList[index].imagePath.toString()),
                    Text(exclusiveOfferList[index].mainText.toString()),
                    Text(exclusiveOfferList[index].subText.toString()),
                    Text(exclusiveOfferList[index].priceText.toString()),

                  ],),
                           );
                         }),
             )
      ],)
    );
  }
}
