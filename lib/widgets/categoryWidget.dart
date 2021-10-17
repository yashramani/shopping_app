import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/model/categoryModel.dart';
import 'package:shopping_app/widgets/headerText.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 150.h,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            HeaderText(
              headerName: '   Categories',
              size: 24.sp,
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(10.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(48.0),
                                boxShadow: [
                                  new BoxShadow(
                                      color: Colors.black12, blurRadius: 20.0,spreadRadius: 0.2)
                                ]),
                            padding: EdgeInsets.all(10.w),
                            child: CircleAvatar(
                              child: Image.asset(
                                categoryData[index].image,
                                height: 30.h,
                              ),
                              backgroundColor: Colors.white,
                              maxRadius: 30.r,
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(categoryData[index].name)
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    ]);
  }
}
