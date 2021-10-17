import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {

  final String headerName;
  final double size;
  const HeaderText({Key? key,required this.headerName,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topLeft,child: Text(headerName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: size),));
  }
}
