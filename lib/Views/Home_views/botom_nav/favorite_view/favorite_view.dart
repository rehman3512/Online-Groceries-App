import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/explore_model/explore-Model.dart';
import 'package:online_groceries_app/Model/favorite_model/favorite-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
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
    int selectedindex=0;
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
      bottomNavigationBar: BottomNav(),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: App_Colors.blackcolor,
      //   selectedItemColor: App_Colors.primarycolor,
      //   currentIndex: selectedindex,
      //   onTap: (index){
      //     selectedindex=index;
      //     setState(() {
      //
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: IconButton(onPressed: (){
      //           Get.to(()=>HomeScreen());
      //         }, icon: Icon(Icons.shopify_sharp)),
      //         label: "shop"),
      //     BottomNavigationBarItem(icon: IconButton(onPressed: (){
      //       Get.to(()=>ExploreView());
      //     }, icon: Icon(Icons.search),),label: "Explore"),
      //     BottomNavigationBarItem(icon: IconButton(onPressed: (){
      //       Get.to(()=>CartView());
      //     }, icon: Icon(Icons.shopping_cart)), label: "Cart"),
      //     BottomNavigationBarItem(icon: IconButton(onPressed: (){
      //       Get.to(()=>FavoriteView());
      //     }, icon: Icon(Icons.favorite_border)), label: "Favorite"),
      //     BottomNavigationBarItem(icon: IconButton(onPressed: (){
      //       Get.to(()=>AccountView());
      //     }, icon: Icon(Icons.person)), label: "Account"),
      //   ],
      // ),
      backgroundColor: App_Colors.whitecolor,
      body: Column(
        children: [SizedBox(height: 50,),
          Align(child: Center(child: TextWidget(text: "Favorite", fontsize: 24,
              fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),),
          SizedBox(height: 30,),
          Divider(),
          Expanded(
            child: ListView.builder(itemCount: favoriteModelList.length,
                itemBuilder: (context,index){
               return Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                      leading: Image.asset(favoriteModelList[index].imagepath.toString()),
                      title: TextWidget(text: favoriteModelList[index].mainText.toString(),
                          fontsize: 18, fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w600),
                      subtitle: TextWidget(text: favoriteModelList[index].subText.toString(),
                          fontsize: 16, fontcolor: App_Colors.greycolor,
                          fontweight: FontWeight.w600),
                         trailing: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                           TextWidget(text: favoriteModelList[index].priceText.toString(),
                               fontsize: 16, fontcolor: App_Colors.blackcolor,
                               fontweight: FontWeight.w600),
                           SizedBox(width: 10,),
                             Icon(Icons.chevron_right)
                         ],),

                     ),
                   ),
                   Divider()
                 ],
               );
            }),
          ),
          InkWell( onTap: (){
            Get.defaultDialog(
              title: "",
              content: Column(children: [
                Image.asset(Appassets.orderFailedImage),
                SizedBox(height: 20,),
                TextWidget(text: "Oops! Order Failed", fontsize: 28,
                    fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
                SizedBox(height: 20,),
                TextWidget(text: "Somrthing went tembly wrong.", fontsize: 16,
                    fontcolor: App_Colors.greycolor, fontweight: FontWeight.w600)
              ],),
              actions: [
                GestureDetector( onTap:(){
                  Get.back();
                },
                  child: AlternativeButton(text: "Please Try Again")),
                GestureDetector( onTap: (){
                  Get.back();
                },
                  child: Container(height: 65,width: 350,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
                        color: Colors.grey.shade200,),child: Center(child: TextWidget(
                          text: "Back to home", fontsize: 18, fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w400),)
                  ),
                )
              ]
            );
          }, child: AlternativeButton(text: "Add All To Cart")),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
