import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  late final String name;
  late final String image;
  CategoryModel({required this.name,required this.image});
}

List<CategoryModel> categoryData = [
  CategoryModel(name: 'Men', image: 'assets/icons/mensshoe.png'),
  CategoryModel(name: 'Women', image: 'assets/icons/shows.png'),
  CategoryModel(name: 'Devices', image: 'assets/icons/devise.png'),
  CategoryModel(name: 'Gadjets', image: 'assets/icons/gadgets.png'),
  CategoryModel(name: 'Gaming', image: 'assets/icons/game.png'),
];