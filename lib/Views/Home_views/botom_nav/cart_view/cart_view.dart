import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/bottomSheet_model/bottomSheet-model.dart';
import 'package:online_groceries_app/Model/cart_model/cart-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/account_view/account_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/order_accepted/order-accepted.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/alternative_button/alternative-button.dart';
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
        subText: "12kg, Price",priceText: "\$${2.99}"),
    CartModel(image: Appassets.gingerImage, mainText: "Ginger",
        subText: "250gm, Price",priceText: "\$${2.99}")
  ];
  
  List<BottomSheetModel> bottomSheetModelList = [
    BottomSheetModel(firstText: "Delivery", lastText: "Select Method"),
    BottomSheetModel(firstText: "Payment",
        lastText: "${Icon(Icons.flag_circle_rounded)}"),
    BottomSheetModel(firstText: "Promo Code", lastText: "Pick discount"),
    BottomSheetModel(firstText: "Total Cost", lastText: "\$${13.97}"),
  ];
  
  double price=0;
  double price1=0;
  int value=1;

  showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context:context,
        isScrollControlled: true,
    builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height/1.9,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 10,),
                TextWidget(text: "Check Out", fontsize: 24, fontcolor: App_Colors.blackcolor,
                    fontweight: FontWeight.w600),
                Spacer(),
                Icon(Icons.close)
              ],),
              SizedBox(height: 10,),
              Divider(),
              Expanded(
                child: ListView.builder( itemCount: bottomSheetModelList.length,
                    itemBuilder: (context,index){
                  return Column(
                    children: [
                      ListTile(
                        title: TextWidget(text: bottomSheetModelList[index].firstText.toString(),
                            fontsize: 18, fontcolor: App_Colors.blackcolor,
                            fontweight: FontWeight.w600),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextWidget(text: bottomSheetModelList[index].lastText.toString(),
                                fontsize: 18, fontcolor: App_Colors.blackcolor,
                                fontweight: FontWeight.w600),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios),
                          ],),
                      ),
                      Divider(),
                    ],
                  );
                }),
              ),
              TextWidget(text: "By placing an order you agreeto Our \n Terms And Conditions",
                  fontsize: 16, fontcolor: App_Colors.greycolor,
                  fontweight: FontWeight.w600),
              SizedBox(height: 20,),
              GestureDetector( onTap: (){
                Get.to(()=>OrderAccepted());
              },
                  child: AlternativeButton(text: "Place Order")),
            ],),
        );
    }
    );
  }

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
                     //  Expanded(
                     //   child: ListTile(
                     //       title:  TextWidget(text: cartModelList[index].mainText.toString(),
                     //           fontsize: 18, fontcolor: App_Colors.blackcolor,
                     //           fontweight: FontWeight.w600),
                     //       subtitle:  TextWidget(text: cartModelList[index].subText.toString(),
                     //           fontsize: 16, fontcolor: App_Colors.greycolor,
                     //           fontweight: FontWeight.w600),
                     //       trailing: Icon(Icons.close,color: App_Colors.greycolor,size: 28)
                     //   ),
                     // ),
                      InkWell( onTap: (){
                        if(value>1)
                          {
                            value--;
                            price-=price1;
                            setState(() {

                            });
                          }
                      },
                        child: Container(height: 45,width: 45,
                          decoration: BoxDecoration(
                              color: App_Colors.whitecolor,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey.shade300)
                          ), child: Center(child: Icon(Icons.remove,
                            color: App_Colors.greycolor,)),
                        ),
                      ),
                      SizedBox(width: 15,),
                      TextWidget(text: "$value", fontsize: 20,
                          fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w600),
                      SizedBox(width: 15,),
                      InkWell( onTap: (){
                        value++;
                        price+=price1;
                        setState(() {

                        });
                      },
                        child: Container(height: 45,width: 45,
                          decoration: BoxDecoration(
                              color: App_Colors.whitecolor,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey.shade300)
                          ), child: Center(child: Icon(Icons.add,
                            color: App_Colors.primarycolor,)),
                        ),
                      ),
                      Spacer(),
                      TextWidget(text: cartModelList[index].priceText.toString(),
                          fontsize: 18, fontcolor: App_Colors.blackcolor,
                          fontweight: FontWeight.w600),
                      SizedBox(width: 20,)
                    ],),
                    Divider()
                  ],
                );
              }),
        ),
        GestureDetector( onTap: (){
           showBottomSheet(context);
        },
            child: AlternativeButton(text: "Go to Checkout")),
        SizedBox(height: 20,)
      ],)
    );
  }
}
