import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/text_widget/text-widget.dart';

class FindProductsModel{
  String? img;
  String? text;
  Color color;
  final Widget navigate;
  FindProductsModel({required this.img, required this.text,
    required this.color,required this.navigate});
}