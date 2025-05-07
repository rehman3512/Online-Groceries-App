import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';
class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int selectedindex=2;
  final List pages= [
    ShopView(),ExploreView(),CartView(),FavoriteView(),AccountView(),
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
          SizedBox(height: 40,),
          Align(child: Center(child: TextWidget(text: "My Cart", fontsize: 20,
              fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),),
          SizedBox(height: 20,),
          Divider(),
        ],
      ),
    );
  }
}
