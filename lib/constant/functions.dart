import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/constant/Constant.dart';

class Functions{
  Future getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.getString('emailID');
  }
}