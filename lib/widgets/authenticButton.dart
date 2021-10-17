
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticButton extends StatelessWidget {

  final String logoimage;
  final String txtname;
  const AuthenticButton({Key? key,required this.logoimage,required this.txtname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset('$logoimage',width: 22.0,height: 22.0,),
            SizedBox(width: 40,),
            Text('$txtname',style: TextStyle(fontSize: 14.0),)
        ],
      ),
    );
  }
}
