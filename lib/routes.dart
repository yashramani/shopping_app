import 'package:get/get.dart';
import 'package:shopping_app/screens/homepage.dart';
import 'package:shopping_app/screens/loginScreen.dart';
import 'package:shopping_app/screens/SignUpPage.dart';
import 'package:shopping_app/screens/otpScreen.dart';

final routing = [
  GetPage(name: '/loginPage', page: () => LoginScreen()),
  GetPage(name: '/signupPage', page: () => SignUpPage()),
  GetPage(name: '/otpPage', page: () => OTPScreen()),
  GetPage(name: '/homePage', page: () => Homepage())
];


