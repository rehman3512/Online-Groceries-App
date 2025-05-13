import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/find-products-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/beverages_view/beveragesView.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/search_view/search-view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';
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
    FindProductsModel(img: Appassets.freshFruitsImage, text: "Fresh Fruits \n & Vegetable", color: Colors.green.shade100,navigate: SearchView()),
    FindProductsModel(img: Appassets.cookingOilImage, text: "Cooking Oil \n & Ghee",color: Colors.orange.shade100,navigate: BeveragesView()),
    FindProductsModel(img: Appassets.meatFishImage, text: "Meat & Fish",color: Colors.pink.shade100,navigate: BeveragesView()),
    FindProductsModel(img: Appassets.bakerySnacksImage, text: "Bakery & Snacks",color: Colors.purple.shade100,navigate: BeveragesView()),
    FindProductsModel(img: Appassets.dairyEggsImage, text: "Dairy & Eggs",color: Colors.orangeAccent.shade100,navigate: BeveragesView()),
    FindProductsModel(img: Appassets.beveragesImage, text: "Beverages",color: Colors.teal.shade50,navigate: BeveragesView()),
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
      body: Column(
        children: [
          pages.elementAt(selectedindex),
          SizedBox(height: 20,),
          Align(
            child: Center( child: TextWidget(text: "Find Product", fontsize: 24,
                fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),),
          ),
          SizedBox( height: 20),
          Container(height: 50,margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300,
          ),child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Search Store",
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,childAspectRatio: 0.7,
                ),
                itemCount: 6,
                itemBuilder: (context,index){
                  return InkWell( onTap: (){
                    Get.to(()=>findProductsList[index].navigate);
                    setState(() {

                    });
                  },
                    child: Container( height: 190,width: 175,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                    color: findProductsList[index].color,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all( color: findProductsList[index].color)
                    ), child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Image.asset(findProductsList[index].img.toString()),
                        SizedBox(height: 30,),
                        TextWidget(text: findProductsList[index].text.toString(),
                            fontsize: 18, fontcolor: App_Colors.blackcolor,
                            fontweight: FontWeight.w600)
                        ],),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}