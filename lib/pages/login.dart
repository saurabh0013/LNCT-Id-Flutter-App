import 'package:flutter/material.dart';
import 'package:ninja_id/models/user_model.dart';
import 'package:ninja_id/pages/id.dart';
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
  final _loginService = LoginService(); //creating private variable to and assigning it to LoginService() class
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
                    onChanged: (val) {// takes value as a parameter  ,  val == whatever entered into the text form field
                      username = val; //assign value to the variable -> username to pass it to login fun. as parameter
                    },
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
                  onChanged: (val) { 
                    password = val;
                  },
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
                        dynamic data =  
                            await _loginService.login(username, password); // using the login fun. of the login service class
                            // since we are returning the data from login fun. response is stored in  variable -> data 
                        UserModel userModel = UserModel.fromjson(data); //passing the data to user model class
                                  
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Id(userModel)));
                        //routing to UserModel class after paasing data ...to assign diff. elements of data to diff. variables
                        
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
