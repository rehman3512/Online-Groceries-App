import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/cart_model/cart-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';
class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int selectedindex=0;
  final List pages= [
    ShopView(),ExploreView(),CartView(),FavoriteView(),AccountView(),
  ];
  List<CartModel> cartModelList=[
    CartModel(image: Appassets.bellPaperImage, mainText: "Bell Paper Red",
        subText: "1kg, Price",priceText: "\$${4.99}"),
    CartModel(image: Appassets.eggChickenRedImage, mainText: "Egg Chicken Red",
        subText: "4pcs, Price",priceText: "\$${1.99}"),
    CartModel(image: Appassets.bananaImage, mainText: "Organic Bananas",
        subText: "12kg, Price",priceText: "\$${3.00}"),
    CartModel(image: Appassets.gingerImage, mainText: "Ginger",
        subText: "250gm, Price",priceText: "\$${2.99}")
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
      body: Column(children: [
        pages.elementAt(selectedindex),
        SizedBox(height: 40,),
        Align(child: Center(child: TextWidget(text: "My Cart", fontsize: 20,
          fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),),
        SizedBox(height: 30,),
        Divider(),
        Expanded(
          child: ListView.builder(
              itemCount: cartModelList.length,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Row(children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(cartModelList[index].image.toString()),
                        )
                      ],),
                     Column( mainAxisSize: MainAxisSize.min,
                       children: [
                       ListTile(
                         title: Text("data"),
                       )
                     ],),
                     Expanded(
                       child: ListTile(
                           title:  TextWidget(text: cartModelList[index].mainText.toString(),
                               fontsize: 18, fontcolor: App_Colors.blackcolor,
                               fontweight: FontWeight.w600),
                           subtitle:  TextWidget(text: cartModelList[index].subText.toString(),
                               fontsize: 16, fontcolor: App_Colors.greycolor,
                               fontweight: FontWeight.w600),
                           trailing: Icon(Icons.close,color: App_Colors.greycolor,size: 28)
                       ),
                     ),
                      // Container(height: 45,width: 45,
                      //   decoration: BoxDecoration(
                      //       color: App_Colors.whitecolor,
                      //       borderRadius: BorderRadius.circular(15),
                      //       border: Border.all(color: Colors.grey.shade300)
                      //   ), child: Center(child: Icon(Icons.remove)),
                      // )
                    ],),
                    Divider()
                  ],
                );
              }),
        )
      ],)
    );
  }
}






// Column(
// children: [
// pages.elementAt(selectedindex),
// SizedBox(height: 40,),
// Align(child: Center(child: TextWidget(text: "My Cart", fontsize: 20,
// fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),),
// SizedBox(height: 30,),
// Divider(),
// Expanded(
// child: ListView.builder(
// itemCount: cartModelList.length,
// itemBuilder: (context,index){
// return Column(
// children: [
// Expanded(
// child: Row(children: [
// Column(children: [
// Image.asset(cartModelList[index].image.toString())
// ],),
// Column(
// children: [
// Expanded(
// child: ListTile(
// title:  TextWidget(text: cartModelList[index].mainText.toString(),
// fontsize: 18, fontcolor: App_Colors.blackcolor,
// fontweight: FontWeight.w600),
// subtitle:  TextWidget(text: cartModelList[index].mainText.toString(),
// fontsize: 18, fontcolor: App_Colors.blackcolor,
// fontweight: FontWeight.w600),
// trailing: Icon(Icons.close)
// ),
// ),
// Row( mainAxisSize: MainAxisSize.min,
// children: [
// Container( height: 45,width: 45,
// decoration: BoxDecoration(
// color: App_Colors.whitecolor,
// borderRadius: BorderRadius.circular(15),
// border: Border.all(color: Colors.grey.shade200)
// ), child: Center(child: Icon(Icons.remove,
// color: App_Colors.greycolor,),),
// )
// ],)
// ],)
// ],),
// ),
// Divider()
// ],
// );
// }),
// )
// ],
// ),