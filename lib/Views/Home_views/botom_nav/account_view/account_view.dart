import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Model/account_model/account-model.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/bottom_nav.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/cart_view/cart_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/explore_view/explore_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/favorite_view/favorite_view.dart';
import 'package:online_groceries_app/Views/Home_views/botom_nav/shop_view/shop_view.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
import 'package:online_groceries_app/controller/constants/appasset/appasset.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';
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
  List<AccountModel> accountModelList=[
    AccountModel(icon: Icon(Icons.shopping_bag_outlined), text: "Orders"),
    AccountModel(icon: Icon(Icons.chrome_reader_mode_sharp), text: "My Details"),
    AccountModel(icon: Icon(Icons.location_on_outlined), text: "Delivery Address"),
    AccountModel(icon:  Icon(Icons.payment), text: "Payment Methods"),
    AccountModel(icon: Icon(Icons.discount_outlined), text: "Promo Card"),
    AccountModel(icon: Icon(Icons.notifications_none), text: "Notifications"),
    AccountModel(icon:  Icon(Icons.help_outline), text: "Help"),
    AccountModel(icon:  Icon(Icons.report_gmailerrorred), text: "About"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNav(),
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
        children: [
          SizedBox(height: 50,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(Appassets.profileImage),),
            title: Row(children: [
              TextWidget(text: "Rehman", fontsize: 20,
                  fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
              SizedBox(width: 10,),
              Icon(Icons.edit_outlined,color: App_Colors.primarycolor,)
            ],),
            subtitle: TextWidget(text: "rehmankh2256@gmail.com", fontsize: 16,
                fontcolor: App_Colors.greycolor, fontweight: FontWeight.w400),
          ),
          SizedBox(height: 20,),
          Divider(),
          Expanded(
              child: ListView.builder(
                  itemCount: accountModelList.length,
                  itemBuilder: (context,index){
                    return Column(children: [
                      ListTile( onTap: (){},
                        leading: accountModelList[index].icon,
                        title: TextWidget(text: accountModelList[index].text.toString(), fontsize: 18,
                            fontcolor: App_Colors.blackcolor, fontweight: FontWeight.w600),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right)),
                      ),
                      Divider(),
                    ],);
                  })
          ),
          Container( height: 65,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade200,
          ),child: Row(children: [
            SizedBox(width: 20,),
            Icon(Icons.logout,color: App_Colors.primarycolor,),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 110),
              child: TextWidget(text: "Log Out", fontsize: 18, fontcolor: App_Colors.primarycolor,
                    fontweight: FontWeight.w500),
            ),
            ],),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

