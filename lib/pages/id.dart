
import 'package:flutter/material.dart';
import 'package:ninja_id/models/user_model.dart';
import 'package:flutter/services.dart';


 class Id extends StatelessWidget{
   final UserModel userModel;// the data assigned in the UserModel class  to the instance userModel
  Id(this.userModel); // constructor that takes instance of UserModel 
  
   @override
   Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return  Scaffold(
       
     
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget> [
              Container(
                height: 160,
                width: 450,
                color: Colors.blue[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('LAKSHMI NARAIN COLLEGE OF TECHNOLOGY ',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 51, 181, 1),
                      fontSize: 26,
                      fontFamily:  'Impact',
                      fontWeight: FontWeight.bold
                      )
                      ),
                      SizedBox(height: 5),
                      Row(
                         mainAxisAlignment:  MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/logoR.jpg'),
                              radius: 50,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Approved by AICTE & Govt.of M.P.  ',
                                style: TextStyle(
                                color:Color.fromRGBO(0, 51, 181, 1),
                                fontSize:17,
                                fontWeight: FontWeight.bold,
                                
                              
                              )
                              ),
                              Text('Affiliated to RGPV, Bhopal      ',
                        style: TextStyle(
                        color: Color.fromRGBO(0, 51, 181, 1),
                        fontSize:17,
                        fontWeight: FontWeight.bold,
                       
                      
                      )
                      ),
                    
                            ],
                          ),
                           
                        ],
                      ),
                      
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 450,
                color: Colors.blue[300],
                child: Center(
                  child: Text('STUDENT', 
                  style: TextStyle(
                    color: Color.fromRGBO(0, 51, 181, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),),
                ),
               ),
              Center(
                child: Container(
                  height: 100,
                  width: 350,
                  child: Image.asset('assets/barcode.png')),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Container(
                    height: 150,
                    width: 120,
                    margin: EdgeInsets.zero,
                    child: Image.network(userModel.imageUrl,
                    fit: BoxFit.cover,)),
                    SizedBox(width: 30),
                     Container(
                    height: 150,
                    width: 120,
                    margin: EdgeInsets.zero,
                    child: Image.asset('assets/hologram.png',
                    fit: BoxFit.cover,)),
                ],
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(userModel.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0
                ),)
              ),
               SizedBox(height: 5.0),
               Text('Branch : ${userModel.branch}',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 19.0
               ),),
               SizedBox(height: 10.0),
               Text('GENDER : ${userModel.gender.toUpperCase()}',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 19.0
               ),),
               SizedBox(height: 5.0),
               Text(
                 'SEMESTER : ${userModel.semester}',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 19.0
               ),),
               SizedBox(height: 15.0),
               Row(
                 mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Container(
                     width: 130,
                     height: 65,
                     child: Image.asset('assets/lnctlogo.png',
                     fit:  BoxFit.fill,),
                     ),
                     Image.asset('assets/sign.png',
                     fit:  BoxFit.fill,),


                 ]
               ),
                SizedBox(height: 10.0),
               Container(
                height: 50,
                width: 450,
                color: Colors.blue[300],
                child: Center(
                  child: Text('www.Lnct.ac.in', 
                  style: TextStyle(
                    color:Color.fromRGBO(0, 51, 181, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                ),
               ),
               RaisedButton(
                 elevation: 5,
                 color: Colors.red,
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                  ),
                 child: Text('EXIT',
                 style: TextStyle(fontSize: 15,
                 color: Colors.white)),
                 onPressed: (){
                 Navigator.pop(context);
               })
            ],
          ),
        )
         
             
            ) ;
    
   }
}