import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/find-products-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  int selectedindex=0;
  final List pages= [
    ShopView(),ExploreView(),CartView(),FavoriteView(),AccountView(),
  ];
  List <FindProductsModel> findProductsList = [
    FindProductsModel(img: Appassets.freshFruitsImage, text: "Fresh Fruits & Vegetable"),
    FindProductsModel(img: Appassets.cookingOilImage, text: "Cooking Oil & Ghee"),
    FindProductsModel(img: Appassets.meatFishImage, text: "Meat & Fish"),
    FindProductsModel(img: Appassets.bakerySnacksImage, text: "Bakery & Snacks"),
    FindProductsModel(img: Appassets.dairyEggsImage, text: "Dairy & Eggs"),
    FindProductsModel(img: Appassets.beveragesImage, text: "Beverages"),
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
        children: [
          pages.elementAt(selectedindex),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,childAspectRatio: 0.8,
                ),
                itemCount: 6,
                itemBuilder: (context,index){
                  return Container( height: 190,width: 175,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: App_Colors.greycolor,
                    borderRadius: BorderRadius.circular(10),
                  ), child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset(findProductsList[index].img.toString()),
                      Text(findProductsList[index].text.toString())
                    ],),
                  );
                }),
          ),
        ],
      ),
    );
  }
}