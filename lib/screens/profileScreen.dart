// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/model/profilemodel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 4.5,
            padding: EdgeInsets.all(30.h),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/profileicon/Avatar.png'),
                      maxRadius: 50.r,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'David Spade',
                          style: TextStyle(
                              fontSize: 35.sp, fontFamily: 'SF Pro Display'),
                        ),
                        Text(
                          'iamdavid@gmail.com',
                          style: TextStyle(
                              fontSize: 19.sp, fontFamily: 'SF Pro Display'),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Container(
              //width: double.maxFinite,
              padding: EdgeInsets.all(15.h),
             // height: MediaQuery.of(context).size.height / 1.5,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: profileData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 10.h),
                        child: Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(profileData[index].imagename),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            SizedBox(width: 10.w,),
                            Text(profileData[index].name,style: TextStyle(fontSize: 24.sp,fontFamily: 'SF Pro Display'),),
                            Spacer(),
                            //Image.asset('assets/profileicon/arrow.png',height: 30.h,width: 30.w,)
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(profileData[index].name),));
                        });
                      },
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
