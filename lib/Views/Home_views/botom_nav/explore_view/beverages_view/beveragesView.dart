import 'package:flutter/material.dart';
import 'package:online_groceries_app/Model/explore_model/explore-Model.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/filter_view/filter-view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/smallButton/small-Button.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class BeveragesView extends StatefulWidget {
  const BeveragesView({super.key});

  @override
  State<BeveragesView> createState() => _BeveragesViewState();
}

class _BeveragesViewState extends State<BeveragesView> {
  List <ExploreModel> exploreModelList=[
    ExploreModel(image: Appassets.dietCokeCanImage, mainText: "Diet Coke",
        subText: "355ml, Price",priceText: "\$${1.99}"),
    ExploreModel(image: Appassets.spriteCanImage, mainText: "Sprite Can",
        subText: "325ml, Price",priceText: "\$${1.50}"),
    ExploreModel(image: Appassets.appleJuiceImage, mainText: "Apple & Grape \n Juice",
        subText: "2l,Price",priceText: "\$${15.99}"),
    ExploreModel(image: Appassets.orangeJusiceImage, mainText: "Orange Juice",
        subText: "2l, Price",priceText: "\$${15.99}"),
    ExploreModel(image: Appassets.cocaColaCanImage, mainText: "Coca Cola Can",
        subText: "325ml, Price",priceText: "\$${4.99}"),
    ExploreModel(image: Appassets.pepsiCanImage, mainText: "Pepsi Can",
        subText: "330ml, Price",priceText: "\$${4.99}")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.whitecolor,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new),
              TextWidget(text: "Beverages", fontsize: 20, fontcolor: App_Colors.blackcolor,
                  fontweight: FontWeight.w600),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>FilterView())
                );}, icon: Icon(Icons.filter_list),),
          ],),
          SizedBox(height: 20,),
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
