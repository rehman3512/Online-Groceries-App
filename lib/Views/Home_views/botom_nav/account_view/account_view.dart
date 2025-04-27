import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  int selectedindex=0;
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
      backgroundColor: App_Colors.whitecolor,
      body: ListView(children: [
        pages.elementAt(selectedindex),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.shopping_bag_outlined),
            SizedBox(width: 10,),
            Text("Orders")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.chrome_reader_mode_sharp),
            SizedBox(width: 10,),
            Text("My Details"),
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.location_on_outlined),
            SizedBox(width: 10,),
            Text("Delivery Address")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.payment),
            SizedBox(width: 10,),
            Text("Payment method")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons. discount_outlined),
            SizedBox(width: 10,),
            Text("Promo Card")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.notifications),
            SizedBox(width: 10,),
            Text("Notification")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},
          title: Row(
          children: [
            Icon(Icons.help_outline),
            SizedBox(width: 10,),
            Text("Help")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile( onTap: (){},title: Row(
          children: [
            Icon(Icons.report_gmailerrorred),
            SizedBox(width: 10,),
            Text("About")
          ],),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        Container( height: 70,width: 250,
          margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: App_Colors.GreyColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: App_Colors.GreyColor),
        ), child: Row(children: [
          SizedBox(width: 30,),
          Icon(Icons.logout,color: App_Colors.primarycolor,),
            SizedBox(width: 100,),
            Text("Log Out",style: TextStyle(
                color: App_Colors.primarycolor),)
          ],),
        ),
      ],),
    );
  }
}
