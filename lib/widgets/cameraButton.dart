import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cameraButton(){
  return CircleAvatar(

backgroundColor: Colors.green,
     child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 15.h,),
  );
}