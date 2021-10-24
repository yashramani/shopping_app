// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_app/widgets/backIconButton.dart';
import 'package:shopping_app/widgets/conatainer.dart';
import 'package:shopping_app/widgets/signInButton.dart';
import 'package:shopping_app/widgets/textFormFeild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10.r, right: 10.r),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              backButton(() {
                Get.back();
              }),
              SizedBox(
                height: 80.h,
              ),
              containerWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 60.h,),
                    textFormFeild(obstxt: false,hinttxt: 'Enter Name',labeltxt: 'Name',),
                    SizedBox(height: 15.h,),
                    textFormFeild(obstxt: false,hinttxt: 'Enter Email',labeltxt: 'Email',),
                    SizedBox(height: 15.h,),
                    textFormFeild(obstxt: true,hinttxt: 'Enter Password',labeltxt: 'Password',),
                    SizedBox(height: 60.h,),
                    buildButton((){
                      Get.toNamed('/otpPage');
                    },'SIGN UP',Colors.green,double.maxFinite)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
