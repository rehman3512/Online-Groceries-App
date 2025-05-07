import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/best-selling-model.dart';
import 'package:online_groceries_app/Model/exclusive-offer-model.dart';
import 'package:online_groceries_app/Model/groceries%20model.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
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
  int selectedindex=0;
  final List pages= [
    ShopView(),ExploreView(),CartView(),FavoriteView(),AccountView(),
  ];
  List <ExclusiveOfferModel> exclusiveOfferList= [
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs, Price", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.appleImage,
        mainText: "Red Apple", subText: "1kg, Price", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.bananaImage,
        mainText: "Organic Bananas", subText: "7pcs, Price", priceText: "4.99"),
    ExclusiveOfferModel(imagePath: Appassets.appleImage,
        mainText: "Red Apple", subText: "1kg, Price", priceText: "4.99"),
  ];
  List <BestSellingModel> bestSellingModelList=[ BestSellingModel(
      imagePath: Appassets.bellPaperImage, mainText: "Bell Paper",
      subText: "1kg, Price", priceText: "4.99"),
    BestSellingModel(imagePath: Appassets.gingerImage, mainText: "Ginger",
        subText: "1kg price", priceText: "4.99"),
    BestSellingModel(imagePath: Appassets.bellPaperImage, mainText: "Bell Paper",
  subText: "1kg, Price", priceText: "4.99"),
  BestSellingModel(imagePath: Appassets.gingerImage, mainText: "Ginger",
  subText: "1kg price", priceText: "4.99"),
  ];
  List <GroceriesModel> groceriesModelList = [GroceriesModel(imagePath: Appassets.beefImage,
      mainText: "Beef Bone", subText: "1kg Price", priceText: "4.99"),
    GroceriesModel(imagePath: Appassets.chickenImage, mainText: "Chicken", subText: "1kg Price",
        priceText: "4.99"),
    GroceriesModel(imagePath: Appassets.beefImage,
        mainText: "Beef Bone", subText: "1kg Price", priceText: "4.99"),
    GroceriesModel(imagePath: Appassets.chickenImage, mainText: "Chicken",
        subText: "1kg Price", priceText: "4.99")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: App_Colors.blackcolor,
          selectedItemColor: App_Colors.primarycolor,
          currentIndex: selectedindex,
          onTap: (index){
            selectedindex=index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: IconButton(onPressed: (){
                  Get.to(()=>HomeScreen());
                  }, icon: Icon(Icons.shopify_sharp)),
                label: "shop"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Get.to(()=>ExploreView());
            }, icon: Icon(Icons.search),),label: "Explore"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Get.to(()=>CartView());
            }, icon: Icon(Icons.shopping_cart)), label: "Cart"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Get.to(()=>FavoriteView());
            }, icon: Icon(Icons.favorite_border)), label: "Favorite"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Get.to(()=>AccountView());
            }, icon: Icon(Icons.person)), label: "Account"),
          ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
              pages.elementAt(selectedindex),
              SizedBox(height: 40,),
              Align( alignment: Alignment.center,
                  child: Image.asset(Appassets.homeLogoImage)),
          SizedBox(height: 10,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Icon(Icons.location_on), SizedBox(width: 10,),
                  Text("Dhaka,Banassre")],),
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
                                description: exclusiveOfferList[index].subText.toString()))
                        );
                      },
                        child: Container(height: 220,width: 150,margin: EdgeInsets.symmetric(
                            vertical: 15,horizontal: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                            borderRadius: BorderRadius.circular(18),),
                          child: Column(children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Image.asset(exclusiveOfferList[index].imagePath.toString()),),
                            TextWidget(text: exclusiveOfferList[index].mainText.toString(),
                                fontsize: 16, fontcolor: App_Colors.blackcolor,
                                fontweight: FontWeight.w400),
                            TextWidget(text: exclusiveOfferList[index].subText.toString(),
                                fontsize: 14, fontcolor: App_Colors.blackcolor,
                                fontweight: FontWeight.w400),
                            SizedBox(height: 15,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                              child: smallButton(text: "\$4.99"),)
                          ],),
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
                            description: bestSellingModelList[index].subText.toString(),)
                        );
                      },
                        child: Container(height: 220,width: 150,
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                            borderRadius: BorderRadius.circular(18),),
                          child: Column(children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Image.asset(bestSellingModelList[index].imagePath.toString()),),
                            TextWidget(text: bestSellingModelList[index].mainText.toString(),
                                fontsize: 16, fontcolor: App_Colors.blackcolor,
                                fontweight: FontWeight.w400),
                            TextWidget(text: bestSellingModelList[index].subText.toString(),
                                fontsize: 14, fontcolor: App_Colors.blackcolor,
                                fontweight: FontWeight.w400),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: smallButton(text: "\$4.99"),
                            ),
                          ],),
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
                      description: groceriesModelList[index].subText.toString())
                  );
                },
                  child: Container(height: 220,width: 150,
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
                      borderRadius: BorderRadius.circular(18),),
                    child: Column(children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Image.asset(groceriesModelList[index].imagePath.toString()),),
                      TextWidget(text: groceriesModelList[index].mainText.toString(),
                          fontsize: 16, fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w400),
                      TextWidget(text: groceriesModelList[index].subText.toString(),
                          fontsize: 14, fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w400),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: smallButton(text: "\$4.99"),
                      )
                    ],),
                  ),);
              }),),


          ],),
        )
    );
  }
}





// Column(children[
// Padding(padding: EdgeInsets.symmetric(horizontal: 17),
// child: SingleChildScrollView( scrollDirection: Axis.horizontal,
// child: Row(children: [
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.bananaImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Organic Banana", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// SizedBox(height: 15,),
// Padding(padding: EdgeInsets.symmetric(horizontal: 15),
// child: smallButton(text: "\$4.99"),)
// ],),
// ),),
// SizedBox(width: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.appleImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Red Apple", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(width: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.bananaImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Organic Banana", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(width: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.appleImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Red Apple", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),)
// ],),
// ),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 17),
// child: SingleChildScrollView( scrollDirection: Axis.horizontal,
// child: Row(children: [
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.bellPaperImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Bell Paper", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.gingerImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Ginger", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.bellPaperImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Bell Paper", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.gingerImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Ginger", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// ],),
// ),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 17),
// child: SingleChildScrollView( scrollDirection: Axis.horizontal,
// child: Row(children: [
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.beefImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Beef Bone", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.chickenImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Broller Chicken", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.beefImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Beef Bone", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// SizedBox(height: 10,),
// InkWell( onTap: (){},
// child: Container(height: 220,width: 150,
// decoration: BoxDecoration(border: Border.all(color: App_Colors.GreyColor),
// borderRadius: BorderRadius.circular(18),),
// child: Column(children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Image.asset(Appassets.chickenImage),),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "Broller Chicken", fontsize: 16,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// Padding(padding: EdgeInsets.symmetric(horizontal: 5),
// child: TextWidget(text: "7pcs,priceg", fontsize: 14,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w400)),
// ],),
// ),),
// ],),
// ),)
// ]),