import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/best_selling_model/best-selling-model.dart';
import 'package:online_groceries_app/Model/exclusive_offer_model/exclusive-offer-model.dart';
import 'package:online_groceries_app/Model/groceries_model/groceries%20model.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/Views/Home_views/product_view/product-view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/smallButton/small-Button.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <ExclusiveOfferModel> exclusiveOfferList= [
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs, Price", priceText: "4.99",
        description: "Our organic bananas are naturally sweet and full of flavor, grown without chemicals.Packed with potassium and fiber, they make the perfect healthy snack or smoothie addition."),
    ExclusiveOfferModel(imagePath: Appassets.appleImage,
        mainText: "Red Apple", subText: "1kg, Price", priceText: "4.99",
        description: "Fresh, juicy apples packed with natural sweetness and essential nutrients.Rich in fiber, antioxidants, and vitamins — perfect for a healthy snack any time of day."),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs, Price", priceText: "4.99",
        description: "Our organic bananas are naturally sweet and full of flavor, grown without chemicals.Packed with potassium and fiber, they make the perfect healthy snack or smoothie addition."),
    ExclusiveOfferModel(imagePath: Appassets.appleImage,
        mainText: "Red Apple", subText: "1kg, Price", priceText: "4.99",
        description: "Fresh, juicy apples packed with natural sweetness and essential nutrients.Rich in fiber, antioxidants, and vitamins — perfect for a healthy snack any time of day."),
  ];
  List <BestSellingModel> bestSellingModelList=[ BestSellingModel(
      imagePath: Appassets.bellPaperImage, mainText: "Bell Paper",
      subText: "1kg, Price", priceText: "4.99",description: "Crisp and sweet, our Bell Peppers are rich in vitamins and perfect for any dish. Fresh and naturally grown for a healthy bite."),
    BestSellingModel(imagePath: Appassets.gingerImage, mainText: "Ginger",
        subText: "1kg price", priceText: "4.99",description: "Fresh and fragrant, our ginger adds a zesty kick to your meals. Perfect for cooking, teas, or smoothies, it's packed with flavor and health benefits."),
    BestSellingModel(imagePath: Appassets.bellPaperImage, mainText: "Bell Paper",
  subText: "1kg, Price", priceText: "4.99",description: "Crisp and sweet, our Bell Peppers are rich in vitamins and perfect for any dish. Fresh and naturally grown for a healthy bite."),
  BestSellingModel(imagePath: Appassets.gingerImage, mainText: "Ginger",
  subText: "1kg price", priceText: "4.99",description: "Fresh and fragrant, our ginger adds a zesty kick to your meals. Perfect for cooking, teas, or smoothies, it's packed with flavor and health benefits."),
  ];
  List <GroceriesModel> groceriesModelList = [
    GroceriesModel(imagePath: Appassets.beefImage,
      mainText: "Beef Bone", subText: "1kg Price", priceText: "4.99",description: "Rich in nutrients, our beef bones are perfect for making flavorful broths and soups. Packed with collagen, they’re ideal for boosting your health and enhancing your dishes."),
    GroceriesModel(imagePath: Appassets.chickenImage, mainText: "Broiler Chicken",
        subText: "1kg Price", priceText: "4.99",description: "Our Broiler Chicken is tender, juicy, and raised with care. Ideal for various recipes, it delivers a fresh and delicious taste in every bite."),
    GroceriesModel(imagePath: Appassets.beefImage, mainText: "Beef Bone",
        subText: "1kg Price", priceText: "4.99",description: "Rich in nutrients, our beef bones are perfect for making flavorful broths and soups. Packed with collagen, they’re ideal for boosting your health and enhancing your dishes."),
    GroceriesModel(imagePath: Appassets.chickenImage, mainText: "Broiler Chicken",
        subText: "1kg Price", priceText: "4.99",description: "Our Broiler Chicken is tender, juicy, and raised with care. Ideal for various recipes, it delivers a fresh and delicious taste in every bite.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: 40,),
              Align( alignment: Alignment.center,
                  child: Image.asset(Appassets.homeLogoImage)),
          SizedBox(height: 18,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Icon(Icons.location_on), SizedBox(width: 10,),
                  TextWidget(text: "KPK, DIKhan", fontsize: 18,
                      fontcolor: App_Colors.blackcolor,
                      fontweight: FontWeight.w600),
            ],),
              Container(height: 50, margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: App_Colors.GreyColor,
                  border: Border.all(color: App_Colors.GreyColor)
                ),child: TextFormField(
                  decoration: InputDecoration( border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),hintText: "Search Store")
                ),),
              Image.asset(Appassets.homeBannerImage),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 30,),
                Text("Exclusive Offer",style: TextStyle( fontWeight: FontWeight.w600,
                color: App_Colors.blackcolor, fontSize: 24,),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                  color: App_Colors.primarycolor, fontSize: 16,fontWeight: FontWeight.w600,
                ),
                )),
                SizedBox(width: 20,),
              ],),
              SizedBox(height: 250,
                child: ListView.builder(itemCount: exclusiveOfferList.length,
                    scrollDirection: Axis.horizontal,itemBuilder:(context,index){
                      return InkWell( onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>ProductView(
                                image: exclusiveOfferList[index].imagePath.toString(),
                                mainText: exclusiveOfferList[index].mainText.toString(),
                                subText: exclusiveOfferList[index].subText.toString(),
                                priceText: exclusiveOfferList[index].priceText.toString(),
                                description: exclusiveOfferList[index].description.toString())
                        ));
                      },
                        child: Container(height: 220,width: 150,margin: EdgeInsets.symmetric(
                            vertical: 15,horizontal: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                            borderRadius: BorderRadius.circular(18),),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Image.asset(exclusiveOfferList[index].imagePath.toString()),),
                              Spacer(),
                              TextWidget(text: exclusiveOfferList[index].mainText.toString(),
                                  fontsize: 16, fontcolor: App_Colors.blackcolor,
                                  fontweight: FontWeight.w600),
                              TextWidget(text: exclusiveOfferList[index].subText.toString(),
                                  fontsize: 14, fontcolor: App_Colors.greycolor,
                                  fontweight: FontWeight.w600),
                              SizedBox(height: 20,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                                child: smallButton(text: "\$4.99"),)
                            ],),
                          ),
                        ),);
                    } ),
              ),

              Row(children: [
                SizedBox(width: 20,),
                Text("Best Selling",style: TextStyle( fontWeight: FontWeight.w600,
                  color: App_Colors.blackcolor, fontSize: 24,),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                  color: App_Colors.primarycolor, fontSize: 16,fontWeight: FontWeight.w600,
                ),
                )),
                SizedBox(width: 20),
              ],),
              SizedBox(height: 250,
                child: ListView.builder(itemCount: bestSellingModelList.length,
                    scrollDirection: Axis.horizontal, itemBuilder: (context,index){
                      return InkWell( onTap: (){
                        Get.to(()=>ProductView(
                            image: bestSellingModelList[index].imagePath.toString(),
                            mainText: bestSellingModelList[index].mainText.toString(),
                            subText: bestSellingModelList[index].subText.toString(),
                            priceText: bestSellingModelList[index].priceText.toString(),
                            description: bestSellingModelList[index].description.toString(),)
                        );
                      },
                        child: Container(height: 220,width: 150,
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                            borderRadius: BorderRadius.circular(18),),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Image.asset(bestSellingModelList[index].imagePath.toString()),),
                              Spacer(),
                              TextWidget(text: bestSellingModelList[index].mainText.toString(),
                                  fontsize: 16, fontcolor: App_Colors.blackcolor,
                                  fontweight: FontWeight.w600),
                              TextWidget(text: bestSellingModelList[index].subText.toString(),
                                  fontsize: 14, fontcolor: App_Colors.greycolor,
                                  fontweight: FontWeight.w600),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: smallButton(text: "\$4.99"),
                              ),
                            ],),
                          ),
                        ),);
                    }),
              ),
              Row(children: [
                SizedBox(width: 20,),
                Text("Groceries",style: TextStyle( fontWeight: FontWeight.w600,
                  color: App_Colors.blackcolor, fontSize: 24,),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                  color: App_Colors.primarycolor, fontSize: 16,fontWeight: FontWeight.w600,
                ),
                )),
                SizedBox(width: 20,),
              ],),
              SizedBox(height: 250,
              child: ListView.builder(itemCount: groceriesModelList.length,
                  scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                return InkWell( onTap: (){
                  Get.to(()=>ProductView(
                      image: groceriesModelList[index].imagePath.toString(),
                      mainText: groceriesModelList[index].mainText.toString(),
                      subText: groceriesModelList[index].subText.toString(),
                      priceText: groceriesModelList[index].priceText.toString(),
                      description: groceriesModelList[index].description.toString())
                  );
                },
                  child: Container(height: 220,width: 150,
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                      borderRadius: BorderRadius.circular(18),),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Image.asset(groceriesModelList[index].imagePath.toString()),),
                        Spacer(),
                        TextWidget(text: groceriesModelList[index].mainText.toString(),
                            fontsize: 16, fontcolor: App_Colors.blackcolor,
                            fontweight: FontWeight.w600),
                        TextWidget(text: groceriesModelList[index].subText.toString(),
                            fontsize: 14, fontcolor: App_Colors.greycolor,
                            fontweight: FontWeight.w600),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: smallButton(text: "\$4.99"),
                        )
                      ],),
                    ),
                  ),);
              }),),


          ],),
        )
    );
  }
}
