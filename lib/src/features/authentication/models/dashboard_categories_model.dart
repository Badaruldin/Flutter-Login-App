import 'package:flutter/material.dart';

class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title,this.heading,this.subheading,this.onPress);
  static List<DashboardCategoriesModel> list=[
    DashboardCategoriesModel("fdf","gdsf","dfsdf",null),
  ];
}