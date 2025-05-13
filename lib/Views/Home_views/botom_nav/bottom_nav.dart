import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex=0;
  final List pages= [
    HomeScreen(),ExploreView(),CartView(),FavoriteView(),AccountView(),
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
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
           Get.to(()=>HomeScreen());
          }, icon: Icon(Icons.shopify)),label: "shop"),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Get.to(()=>ExploreView());
          }, icon: Icon(Icons.search)), label: "Explore"),
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
      body: pages.elementAt(selectedindex),
    );
  }
}