import 'package:flutter/cupertino.dart';

class bestSellingModel{
  late final String imagename;
  late final String companyname;
  late final String productname;
  late final String rate;
  bestSellingModel({required this.imagename,required this.companyname,required this.productname,required this.rate});
}

List<bestSellingModel> bestSellingData = [
  bestSellingModel(imagename: 'assets/images/Image.png', companyname: 'BeoPlay Speaker', productname: 'Bang and Olusfan',rate: '\$755'),
  bestSellingModel(imagename: 'assets/images/Image1.png', companyname: 'Leather Wristwatch', productname: 'Tag Heuer',rate: '\$450'),
  bestSellingModel(imagename: 'assets/images/Image.png', companyname: 'BeoPlay Speaker', productname: 'Bang and Olusfan',rate: '\$755'),
  bestSellingModel(imagename: 'assets/images/Image1.png', companyname: 'Leather Wristwatch', productname: 'Tag Heuer',rate: '\$450'),
  bestSellingModel(imagename: 'assets/images/Image.png', companyname: 'BeoPlay Speaker', productname: 'Bang and Olusfan',rate: '\$755'),
  bestSellingModel(imagename: 'assets/images/Image1.png', companyname: 'Leather Wristwatch', productname: 'Tag Heuer',rate: '\$450'),
];


