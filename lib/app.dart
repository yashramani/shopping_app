import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/routes.dart';
import 'package:shopping_app/screens/homepage.dart';
import 'package:shopping_app/screens/loginScreen.dart';

class TraddingCart extends StatefulWidget {

  const TraddingCart({Key? key}) : super(key: key);

  @override
  State<TraddingCart> createState() => _TraddingCartState();
}

class _TraddingCartState extends State<TraddingCart> {

  void initState() {
    super.initState();
    _checkLogin();
  }

  String id = "";
  _checkLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('emailID')!;
    print('*-*-*-*--*-*-*-*-**-*-**-*-**-* $id');
    if(id != null && id != "") {
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

