import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarContainer extends StatelessWidget {
  SearchBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          height: 40.h,
      decoration: BoxDecoration(
          color: Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(90.r)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              fillColor: Colors.green,
              focusColor: Colors.green,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.green,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
