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

  Future createEmailUser({required String email,required String password}) async {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return 'User Create';
  }

  Future signInUser({required String email,required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return 'Sign In';
  }

  Future verifyEmail(BuildContext context) async {
    useremail = _firebaseAuth.currentUser!;
    await useremail.reload();
    useremail.sendEmailVerification();

    if(useremail.emailVerified){
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('User Login SuccessFully'),
      ));
    }else{
      isLoading(context, false);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Invalid User Details'),
      ));
    }
  }
}

