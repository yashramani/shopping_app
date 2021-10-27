import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/constant/Constant.dart';
import 'package:shopping_app/routes.dart';
import 'package:shopping_app/screens/loginScreen.dart';

class TraddingCart extends StatefulWidget {

  const TraddingCart({Key? key}) : super(key: key);

  @override
  State<TraddingCart> createState() => _TraddingCartState();
}

class _TraddingCartState extends State<TraddingCart> {

  void initState() {
    super.initState();
    setState(() {
      _checkLogin();
    });
  }

  _checkLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    appConstData.usergglID = preferences.getString('emailID')!;
    print('CheckLogin ------------------------ ${appConstData.usergglID} ');
    if(appConstData.usergglID != null && appConstData.usergglID != "") {
      Get.toNamed('/homePage');
    }
    else{
      Get.toNamed('/loginPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          getPages: routing,
        );
      },
    );
  }
}

