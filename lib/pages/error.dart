import 'package:flutter/material.dart';
import 'package:ninja_id/pages/login.dart';


class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue[300],

     body: Center(child: 
      
     Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
       Container(
         width: 200,
         height: 350,
         child: Image.asset(
           'assets/error.png',
           fit: BoxFit.contain,
           ),
        ),
         Text('Invalid Accsoft id or password',
         style: TextStyle(
           color: Colors.indigo,
           fontWeight: FontWeight.bold,
           fontSize: 20
         ),
        ),
        SizedBox(height: 20),
        RaisedButton(
          elevation: 5,
          color: Colors.indigo,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Text('Try Again',style:
            TextStyle(
              color: Colors.white,
              fontSize: 20
            ) ,),
          ),
          onPressed: (){
            Navigator.of(context).pushReplacement
            (MaterialPageRoute(builder: (_)=> Login()));
            },
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)
                  ),    
           
         )

       ],
     ),
    ),
  );
  }
}