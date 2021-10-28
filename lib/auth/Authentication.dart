// ignore: file_names
// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:shopping_app/constant/Constant.dart';
import 'package:shopping_app/widgets/loader.dart';

class Authentication {

  GoogleSignIn googleSignIn = GoogleSignIn();
  late GoogleSignInAccount data;
  late final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  late User useremail;
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
      appConstData.usergglID = data.email;
      print('------------------------- ${appConstData.usergglID}');
      sharedPreferences.setString('emailID', data.email);
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print("-----------------------------------$e");
    }
  }

  Future googleLogOut() async {
    await googleSignIn.signOut();
    return 'Sign Out';
  }

  Future createEmailUser(
      {context, required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('User Created SuccessFully'),
      ));
      isLoading(context, false);
      Get.toNamed('/loginPage');
      return 'User Created SuccessFully';
    } on FirebaseAuthException catch (e) {
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message.toString()),
      ));
      print(e);
    }
  }

  Future signInUser(
      {context, required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('User Login SuccessFully'),
      ));
      Get.toNamed('/homePage');
      return 'Sign In';
    } on FirebaseAuthException catch (e) {
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message.toString()),
      ));
      print(e);
    }
  }

  Future verifyEmail(BuildContext context) async {
    try {
      useremail = _firebaseAuth.currentUser!;
      await useremail.reload();
      useremail.sendEmailVerification();
      if (useremail.emailVerified == true) {
        isLoading(context, false);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('User Login SuccessFully'),
        ));
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message.toString()),
      ));
    }
  }
}
