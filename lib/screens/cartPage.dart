// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/model/cartPageList.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _itemCount = 0;

  void increament(int i) {
    setState(() {
      _itemCount = i;
      _itemCount++;
    });
  }

  void decreament(int i) {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                  itemCount: cartPagedata.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.w),
                            child: Image.asset(cartPagedata[index].image_name),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartPagedata[index].name,
                                style: TextStyle(
                                    fontSize: 21.sp,
                                    fontFamily: 'SF Pro Display'),
                              ),
                              Text(
                                cartPagedata[index].price,
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.green),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                color: Colors.black12,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() => _itemCount != 0
                                            ? _itemCount--
                                            : _itemCount);
                                      },
                                    ),
                                    Text(_itemCount.toString()),
                                    IconButton(
                                        icon: new Icon(Icons.add),
                                        onPressed: () {
                                          setState(() {
                                            increament(_itemCount);
                                            print(_itemCount);
                                          });
                                        })
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
