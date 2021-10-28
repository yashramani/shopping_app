// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_app/auth/Authentication.dart';
import 'package:shopping_app/widgets/backIconButton.dart';
import 'package:shopping_app/widgets/conatainer.dart';
import 'package:shopping_app/widgets/loader.dart';
import 'package:shopping_app/widgets/signInButton.dart';
import 'package:shopping_app/widgets/textFormFeild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Authentication auth = Authentication();

  void saveData() {
    if (_formKey.currentState!.validate()) {
      auth.createEmailUser(context: context,email: emailController.text, password: passwordController.text).then((
          value) {
        nameController.clear();
        emailController.clear();
        passwordController.clear();
      });
    }
  }

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
                    child: Form(
                        key: _formKey,
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
                            SizedBox(
                              height: 60.h,
                            ),
                            textFormFeild(
                              controller: nameController,
                              obstxt: false,
                              hinttxt: 'Enter Name',
                              labeltxt: 'Name',
                              error: 'Name Required',
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            textFormFeild(
                              controller: emailController,
                              obstxt: false,
                              hinttxt: 'Enter Email',
                              labeltxt: 'Email',
                              error: 'Email Required',
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            textFormFeild(
                              controller: passwordController,
                              obstxt: true,
                              hinttxt: 'Enter Password',
                              labeltxt: 'Password',
                              error: 'Password Required',
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                            buildButton(() {
                              isLoading(context, true);
                              setState(() {
                                saveData();
                              });

                            }, 'SIGN UP', Colors.green, double.maxFinite)
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
