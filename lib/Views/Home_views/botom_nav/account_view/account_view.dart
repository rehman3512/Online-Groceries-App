import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: ListView(children: [
        ListTile( title: Row(
            children: [
            Icon(Icons.shopping_bag_outlined),
            SizedBox(width: 10,),
            Text("Orders")
          ],),
            trailing: Icon(Icons.chevron_right),
          ),
        ListTile( title: Row(
            children: [
              Icon(Icons.chrome_reader_mode_sharp),
              SizedBox(width: 10,),
              Text("My Details"),
            ],),
            trailing: Icon(Icons.chevron_right),
          ),
        ListTile( title: Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 10,),
              Text("Delivery Address")
            ],),
            trailing: Icon(Icons.chevron_right),
          ),
        ListTile( title: Row(
            children: [
              Icon(Icons.payment),
              SizedBox(width: 10,),
              Text("Payment method")
            ],),
            trailing: Icon(Icons.chevron_right),
          ),
        ListTile( title: Row(
            children: [
              Icon(Icons. discount_outlined),
              SizedBox(width: 10,),
              Text("Promo Card")
            ],),
            trailing: Icon(Icons.chevron_right),
          ), ListTile( title: Row(
            children: [
              Icon(Icons.notifications),
              SizedBox(width: 10,),
              Text("Notification")
            ],),
            trailing: Icon(Icons.chevron_right),
          ), ListTile( title: Row(
            children: [
              Icon(Icons.help_outline),
              SizedBox(width: 10,),
              Text("Help")
            ],),
            trailing: Icon(Icons.chevron_right),
          ), ListTile( title: Row(
            children: [
              Icon(Icons.report_gmailerrorred),
              SizedBox(width: 10,),
              Text("About")
            ],),
            trailing: Icon(Icons.chevron_right),
          ),
        ],),

    );
  }
}
