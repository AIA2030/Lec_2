import 'package:flutter/material.dart';
import 'package:sign_login/main_pages/home_page.dart';
import 'package:sign_login/main_pages/login_page.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Stack(
                  children: <Widget> [
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text("Password Reset", style: TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                      child: Text( ".", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(320.0, 135.0, 0.0, 0.0),
                      child: Text( "Musician", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget> [

                      Center(child: Text("Enter your Spotify username, or the email address that you used to register. We'll send you an email with your username and a link to reset your password.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

                      SizedBox(height: 20.0,),

                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                            labelText: 'Email Or Username',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white, ))),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                            },

                            child: Center(
                              child: Text("Send", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20.0,),

                    ],
                  ),
                ),

                SizedBox(height: 15.0,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("If you still need help, check out", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                    //  Text("New Member?", style: TextStyle(fontWeight: FontWeight.normal),),

                    SizedBox(width: 5.0,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },

                      child: Center(
                        child: Text("Support", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, decoration: TextDecoration.underline)),
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
