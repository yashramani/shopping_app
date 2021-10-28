import 'package:flutter/material.dart';

isLoading(context, bool isLoad) {
  isLoad == true
      ? showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(backgroundColor: Colors.white),
            );
          },
        )
      : print('------Not-----------');
}



