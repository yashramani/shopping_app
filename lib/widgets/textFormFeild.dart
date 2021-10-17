import 'package:flutter/material.dart';

class textFormFeild extends StatelessWidget {
  final bool obstxt;
  final String hinttxt;
  final String labeltxt;

  const textFormFeild({
    Key? key,
    required this.obstxt,
    required this.hinttxt,
    required this.labeltxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  TextFormField(
        obscureText: obstxt,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          hintText: hinttxt,
          labelText: labeltxt,
          hoverColor: Colors.green,
          labelStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
          ),
        ),
      ),
    );
  }
}
