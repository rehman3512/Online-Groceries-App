import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/explore_model/explore-Model.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/filter_view/filter-view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/smallButton/small-Button.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List <ExploreModel> exploreModelList=[
    ExploreModel(image: Appassets.eggChickenRedImage, mainText: "Egg Chicken Red",
        subText: "4pcs, Price",priceText: "\$${1.99}"),
    ExploreModel(image: Appassets.eggChickenWhiteImage, mainText: "Egg Chicken White",
        subText: "180g, Price",priceText: "\$${1.50}"),
    ExploreModel(image: Appassets.eggPastaImage, mainText: "Egg Pasta",
        subText: "30gm, Price",priceText: "\$${15.99}"),
    ExploreModel(image: Appassets.noodlesImage, mainText: "Egg Noodles",
        subText: "2l, Price",priceText: "\$${15.99}"),
    ExploreModel(image: Appassets.mayonnaisEgglesImage, mainText: "Mayonnais Eggles",
        subText: "2l, Price",priceText: "\$${15.99}"),
    ExploreModel(image: Appassets.eggNoodlesImage, mainText: "Egg Noodles",
        subText: "30gm, Price",priceText: "\$${15.99}" )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container( height: 50, width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                ),child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
              IconButton(onPressed: (){
                Get.to(()=>FilterView());
              }, icon: Icon(Icons.filter_list),)
            ],),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisExtent: 250,crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: exploreModelList.length, itemBuilder: (context,index){
              return Container( height: 300,width: 150,
                //margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                padding: const EdgeInsets.all( 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.grey.shade300),
                  color: App_Colors.whitecolor,
                ), child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Center(child: Image.asset(exploreModelList[index].image.toString(),),),
                    ),
                    SizedBox(height: 10,),
                    Text(exploreModelList[index].mainText.toString()),
                    Text(exploreModelList[index].subText.toString()),
                    SizedBox(height: 8,),
                    smallButton(text: exploreModelList[index].priceText.toString(),)
                  ],),
              );
            }),
          ),
        ],
      ),
    );
  }
}
