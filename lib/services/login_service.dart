// Getting Data from the server
import 'dart:convert';
import "package:http/http.dart" as http;
// import 'package:shared_preferences/shared_preferences.dart'; //shared prefrences is used to save datalto local storage 
class LoginService{
  
  login(String username,String password)async{
    final url = "https://newlnct.herokuapp.com/login?username=$username&password=$password&token";
    dynamic res = await http.get(url);
    try{
    res = await jsonDecode(res.body);
    // final SharedPreferences preferences =
    //   await SharedPreferences.getInstance();
    //   await preferences.setString('username', username);
    //   await preferences.setString('password', password);
    //   await preferences.setString('name', res['Name']);
    //   await preferences.setString('imageUrl', res['ImageUrl']);
    //   await preferences.setString('semester', res['Semseter']);
    //   await preferences.setString('branch', res['Branch']);
    //   await preferences.setString('gender', res['Gender']);
    return res;
    }
    catch(err){
      return "error";
    }
  }
}