import 'package:flutter/material.dart';
import 'package:ninja_id/models/user_model.dart';
import 'package:ninja_id/pages/id.dart';
import 'package:ninja_id/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  dynamic name = prefs.get('name');
  dynamic imageUrl = prefs.get('imageUrl');
  dynamic username = prefs.get('username');
  dynamic password = prefs.get('password');
  dynamic branch = prefs.get('branch');
  dynamic semester = prefs.get('semester');
  dynamic gender = prefs.get('gender');
  Map data = {
     'name': name,
    'ImageUrl': imageUrl,
    'username': username,
    'password': password,
    'branch': branch,
    'semseter': semester,
    'gender': gender
  };
 

  print(data);
  Widget screen = name==null? Login() : Id(UserModel.fromjson(data)) ;
 
 runApp(MaterialApp(
home: screen,
  ));
}


