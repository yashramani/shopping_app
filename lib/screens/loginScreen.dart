import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_app/widgets/authenticButton.dart';
import 'package:shopping_app/widgets/conatainer.dart';
import 'package:shopping_app/widgets/signInButton.dart';
import 'package:shopping_app/widgets/textFormFeild.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.w,
            right: 15.w,
            bottom: 50.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 100.h,),
              containerWidget(child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0xff00c569),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Sign in to Continue',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff929292),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    textFormFeild(labeltxt: 'Name',hinttxt: 'Enter Name',obstxt: false,),
                    SizedBox(
                      height: 10.h,
                    ),
                    textFormFeild(obstxt: true,hinttxt: 'Enter Password',labeltxt: 'Password',),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    buildButton((){
                      Get.toNamed('/signupPage');
                    },'SIGN IN',Colors.green,double.maxFinite)
                  ],
                ),
              ),),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '-OR-',
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 35.h,
              ),
              AuthenticButton(logoimage: "assets/images/Icon_Facebook.png", txtname: 'Sign In with Password'),
              SizedBox(
                height: 15.h,
              ),
              AuthenticButton(txtname: 'Sign In with Google',logoimage: 'assets/images/icons8_Google_2.png',)
            ],
          ),
        ),
      ),
    ));
  }
}
