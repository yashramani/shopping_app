// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/constant/Constant.dart';
import 'package:shopping_app/constant/functions.dart';
import 'package:shopping_app/widgets/bestSelling.dart';
import 'package:shopping_app/widgets/categoryWidget.dart';
import 'package:shopping_app/widgets/searchBarWidget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  Functions fun = Functions();
  @override

  void initState()  {
    super.initState();
     getData();
  }



  getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    appConstData.usergglID = preferences.getString('emailID')!;

    print('ExploreScreen--------------------------- ${appConstData.usergglID}');
  }

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
            Text('${appConstData.usergglID}',style: const TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 1.h,),
            Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w),
              child: Container(height: MediaQuery.of(context).size.height / 5,width: double.maxFinite,decoration: const BoxDecoration(color: Colors.amber,image: DecorationImage(
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
