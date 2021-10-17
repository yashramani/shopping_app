
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shopping_app/widgets/backIconButton.dart';
import 'package:shopping_app/widgets/conatainer.dart';
import 'package:shopping_app/widgets/signInButton.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r),
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(8.w),
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
                        'Verification',
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Text('A 6 - Digit PIN has been sent to your email ',style: TextStyle(fontSize: 15.sp,color: Colors.black45),),
                      Text('address, enter it below to continue ',style: TextStyle(fontSize: 15.sp,color: Colors.black45),),
                      SizedBox(height: 60.h,),
                      OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 40.w,
                        obscureText: true,
                        style: TextStyle(
                            fontSize: 17
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                      SizedBox(height: 60.h,),
                      buildButton((){
                        Get.toNamed('/homePage');
                      },'CONTINUE',Colors.green,double.maxFinite)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
