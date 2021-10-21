import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/widgets/bestSelling.dart';
import 'package:shopping_app/widgets/categoryWidget.dart';
import 'package:shopping_app/widgets/searchBarWidget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchBarWidget(),
            SizedBox(
              height: 20.h,
            ),
            CategoryWidget(),
            BestSelling(),
            SizedBox(height: 1.h,),
            Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w),
              child: Container(height: MediaQuery.of(context).size.height / 5,width: double.maxFinite,decoration: BoxDecoration(color: Colors.amber,image: DecorationImage(
                image:  AssetImage("assets/images/Promoimage.png"),
                fit: BoxFit.fill,
              )),),
            )
          ],
        ),
      ),
    ));
  }
}
