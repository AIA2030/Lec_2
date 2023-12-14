import 'package:flutter/material.dart';
import 'package:sign_login/sign_in.dart';
import 'package:sign_login/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    child: Stack(
                      children: <Widget> [
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                          child: Text("Welcome To", style: TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.bold),),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(450.0, 125.0, 0.0, 0.0),
                          child: Text( ".", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(480.0, 155.0, 0.0, 0.0),
                          child: Text( "Musician", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.blue, ),),
                        ),


                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget> [

                        Container(
                          child: Image.asset('assets/images/ai-generated-8416671.jpg', height: 600, width: 2000, fit: BoxFit.fill),
                        ),

                        SizedBox(height: 40.0,),

                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),

                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));

                              },

                              child: Center(
                                child: Text("Sign IN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20.0,),

                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),

                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));

                              },

                              child: Center(
                                child: Text("Sign UP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20.0,),

                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        )

    );
  }
}
