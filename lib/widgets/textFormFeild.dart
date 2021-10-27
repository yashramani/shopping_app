import 'package:flutter/material.dart';

class textFormFeild extends StatelessWidget {
  final bool obstxt;
  final String hinttxt;
  final String labeltxt;
  final TextEditingController controller;
  final String error;

  const textFormFeild(
      {Key? key,
      required this.obstxt,
      required this.hinttxt,
      required this.labeltxt,
      required this.controller,
      required this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (v) {
          if (v == null || v.isEmpty) {
            return '$error';
          }
          return null;
        },
        obscureText: obstxt,
        controller: controller,
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
