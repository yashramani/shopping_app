import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/widgets/cameraButton.dart';
import 'package:shopping_app/widgets/categoryWidget.dart';
import 'package:shopping_app/widgets/searchBarWidget.dart';
import 'package:shopping_app/widgets/searchbarContainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            SearchBarWidget(),
            SizedBox(height: 20.h,),
            CategoryWidget(),
           // Spacer()
          ],
        ),
      ),
    ));
  }
}
