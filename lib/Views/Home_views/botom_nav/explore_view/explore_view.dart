import 'package:flutter/material.dart';
import 'package:online_groceries_app/Model/find-products-model.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
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
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}