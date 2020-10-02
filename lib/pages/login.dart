import 'package:flutter/material.dart';
import 'package:ninja_id/models/user_model.dart';
import 'package:ninja_id/pages/id.dart';
import 'package:ninja_id/pages/error.dart';
import 'package:ninja_id/services/login_service.dart';
import 'package:progress_dialog/progress_dialog.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ProgressDialog progressDialog;
  String username;
  String password;
  TextEditingController _controllerUser = TextEditingController(); 
  TextEditingController _controllerPass = TextEditingController(); 
  final _loginService = LoginService(); //creating private variable to and assigning it to LoginService() class
   void dispose() {
    _controllerUser.dispose();
    _controllerPass.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    progressDialog = ProgressDialog(context,type: ProgressDialogType.Normal);
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SingleChildScrollView(
              child: Padding(
          padding: EdgeInsets.fromLTRB(50.0, 150.0, 50.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             
              Center(
                child: Container(
                  child: Image.asset('assets/lnctRound.png',
                  fit: BoxFit.fill,),
                  
                  height: 200,
                  width: 200,
                  
                 ),
              ),
              SizedBox(height: 40),
              Center(
                child: TextField(
                   controller: _controllerUser,
                    maxLength: 11,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Accsoft Id',
                      fillColor: Colors.grey[200],
                      filled: true,
                    )),
              ),
              SizedBox(height: 20.0),
              Center(
                child: TextField(
                  obscureText: true,
                  controller: _controllerPass,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  child: FloatingActionButton.extended(
                      elevation: 0.0,
                      backgroundColor: Colors.blue[900],
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.5
                          ),
                        ),
                      ),
                      onPressed: () async {

                        progressDialog.show();
                        setState(() {
                          username = _controllerUser.text;
                          password = _controllerPass.text;
                        });
                        dynamic data =  
                            await _loginService.login(username, password); // using the login fun. of the login service class
                            // since we are returning the data from login fun. response is stored in  variable -> data 
                            if (data == null) 
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> Error()));
                        UserModel userModel =  UserModel.fromjson(data); //passing the data to user model class
                                setState(() {
                          _controllerUser.text= '';
                          _controllerPass.text= '';
                        }); 
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Id(userModel)));
                      
                        
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
