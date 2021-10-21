import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/model/bestSellingModel.dart';
import 'package:shopping_app/widgets/headerText.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              HeaderText(headerName: '   Best Selling', size: 24.sp),
              Spacer(),
              Text('See all'),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: bestSellingData.length,
                  padding: EdgeInsets.all(10.h),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(padding: EdgeInsets.all(10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(bestSellingData[index].imagename,height: 240.h,),
                          Text(bestSellingData[index].productname,style: TextStyle(fontSize: 21.sp,fontFamily: 'SF Pro Display',),),
                          SizedBox(height: 2.h,),
                          Text(bestSellingData[index].companyname,style: TextStyle(fontSize: 15.sp,fontFamily: 'SF Pro Display'),),
                          SizedBox(height: 2.h,),
                          Text(bestSellingData[index].rate,style: TextStyle(color: Colors.green),),
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
