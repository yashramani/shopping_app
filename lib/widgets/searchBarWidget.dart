import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/widgets/cameraButton.dart';
import 'package:shopping_app/widgets/searchbarContainer.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.r),child: Row(
      children: [
        SearchBarContainer(),
        SizedBox(width: 5.w,),
        cameraButton()
      ],

    ),);
  }
}
