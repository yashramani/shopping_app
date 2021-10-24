// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:get/get.dart';
import 'package:shopping_app/model/cartPageList.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  final List<TextEditingController> _quantityController = [];
  int itemCount = 0;

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
                  padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                  itemCount: cartPagedata.length,
                  itemBuilder: (context, index) {
                    _quantityController.add(TextEditingController());
                    return SwipeActionCell(
                      trailingActions: [
                        SwipeAction(
                            title: 'Delete',
                            color: Colors.grey,
                            backgroundRadius: 5.0,
                            onTap: (handler) {
                              setState(() {
                                Get.defaultDialog(
                                  actions: [
                                    OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.pop(context, false);
                                          });
                                        },
                                        child: Text('Cansel')),
                                    OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            cartPagedata.removeAt(index);
                                            Navigator.pop(context, true);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content:
                                                  Text('Deleted Successfully!'),
                                            ));
                                          });
                                        },
                                        child: Text('OK')),
                                  ],
                                  title: 'Confirm',
                                  middleText: 'Are you Sure want to Delete?',
                                );
                              });
                            })
                      ],
                      key: ValueKey(cartPagedata[index]),
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.w),
                              child:
                                  Image.asset(cartPagedata[index].image_name),
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
                                        onPressed: () => _removeQuantity(index),
                                      ),
                                      Container(
                                          width: 40.w,
                                          padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                                          child: Center(
                                            child: TextField(
                                              enabled: false,
                                              textAlign: TextAlign.center,
                                              decoration: const InputDecoration(
                                                hintText: "0",
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder: InputBorder.none,
                                              ),
                                              keyboardType: TextInputType.number,
                                              controller: _quantityController[index],
                                            ),
                                          )),
                                      IconButton(
                                          icon: new Icon(Icons.add),
                                          onPressed: () => _addQuantity(index))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }

  _addQuantity(int index) {
    setState(() {
      itemCount++;
      _quantityController[index].text = '$itemCount';

    });
  }

  _removeQuantity(int index) {
    setState(() {
      if (itemCount > 0) {
        itemCount--;
      } else {
        itemCount = 0;
      }
      _quantityController[index].text = '$itemCount';
    });
  }
}
