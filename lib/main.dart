import 'package:flutter/material.dart';
// import 'package:ninja_id/models/user_model.dart';
// import 'package:ninja_id/pages/id.dart';
import 'package:ninja_id/pages/login.dart';
// import 'package:shared_preferences/shared_preferences.dart';
void main()async{
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // dynamic name = prefs.get('name');
  // dynamic imageUrl = prefs.get('imageUrl');
  // dynamic username = prefs.get('username');
  // dynamic password = prefs.get('password');
  // dynamic lnctu = prefs.get('lnctu');
  // dynamic branch = prefs.get('branch');
  // dynamic semester = prefs.get('semester');
  // dynamic gender = prefs.get('gender');
  // Map data = {
  //   'Name': name,
  //   'ImageUrl': imageUrl,
  //   'username': username,
  //   'password': password,
  //   'lnctu': lnctu,
  //   'Branch': branch,
  //   'Semseter': semester,
  //   'Gender': gender
  // };
  // print(data);
  // Widget screen = name==null? Login() : Id(UserModel.fromjson(data)) ;
 
 runApp(MaterialApp(
home: Login(),
  ));
}


