// ignore: file_names
// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Authentication {

  GoogleSignIn googleSignIn = GoogleSignIn();
  late GoogleSignInAccount data;

  GoogleSignInAccount get user => data;

  Future googleSign(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      data = googleUser;
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      sharedPreferences.setString('emailID', data.email);
      print(
          '*-*-*-*-*-*-*-*-*-*-----------------${data.email}-------------*-*-*-*-*-*-*-*-*-*');
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print("-----------------------------------$e");
    }
  }
}
