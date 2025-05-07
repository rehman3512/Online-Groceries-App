import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/explore_model/explore-Model.dart';
import 'package:online_groceries_app/Model/favorite_model/favorite-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/alternative_button/alternative-button.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';
class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}
    int selectedindex=3;
    final List pages= [
    ShopView(),ExploreView(),CartView(),FavoriteView(),AccountView(),
    ];

class _FavoriteViewState extends State<FavoriteView> {
  List<FavoriteModel> favoriteModelList=[
    FavoriteModel(imagepath: Appassets.spriteCanImage,
        mainText: "Sprite Can", subText: "325ml, Price",
        priceText: "\$${1.50}"),
    FavoriteModel(imagepath: Appassets.dietCokeCanImage, mainText: "Diet Coke",
        subText: "355ml, Price",priceText: "\$${1.99}"),
    FavoriteModel( imagepath:  Appassets.appleJuiceImage, mainText: "Apple & Grape \n Juice",
        subText: "2l,Price",priceText: "\$${15.99}"),
    FavoriteModel(imagepath: Appassets.cocaColaCanImage, mainText: "Coca Cola Can",
        subText: "325ml, Price",priceText: "\$${4.99}"),
    FavoriteModel(imagepath: Appassets.pepsiCanImage, mainText: "Pepsi Can",
        subText: "330ml, Price",priceText: "\$${4.99}")
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
      body: Column(
        children: [SizedBox(height: 30,),
          Align(child: Center(child: TextWidget(text: "Favorite", fontsize: 20,
              fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),),
          SizedBox(height: 10,),
          Divider(),
          Expanded(
            child: ListView.builder(itemCount: favoriteModelList.length,
                itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ListTile(
                  leading: Image.asset(favoriteModelList[index].imagepath.toString()),
                  title: Text(favoriteModelList[index].mainText.toString()),
                  subtitle: Text(favoriteModelList[index].subText.toString()),

                 ),
               );
            }),
          ),
          AlternativeButton(text: "Add All To Cart"),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
