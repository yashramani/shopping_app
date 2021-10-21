import 'package:flutter/cupertino.dart';

class CartPageList{
   final String image_name;
   final String name;
   final String price;

  CartPageList({required this.image_name, required this.name,required this.price });
}

List<CartPageList> cartPagedata = [
  CartPageList(image_name: 'assets/images/dish.png', name: 'Tag Heuer Wristwatch', price: '\$1100'),
  CartPageList(image_name: 'assets/images/kittly.png', name: 'BeoPlay Speaker', price: '\$450'),
  CartPageList(image_name: 'assets/images/dish.png', name: 'Tag Heuer Wristwatch', price: '\$120'),
  CartPageList(image_name: 'assets/images/dish.png', name: 'Bang & Olufson Case', price: '\$1100'),
  CartPageList(image_name: 'assets/images/kittly.png', name: 'BeoPlay Speaker', price: '\$450'),
];