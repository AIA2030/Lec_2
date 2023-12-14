import 'package:flutter/material.dart';
import 'package:sign_login/home_page.dart';
import 'package:sign_login/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    final username = TextEditingController();
    final password = TextEditingController();
    final email = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:ListView(
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
                        child: Text("Sign UP", style: TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.bold),),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                        child: Text( ".", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(320.0, 135.0, 0.0, 0.0),
                        child: Text( "Musician", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget> [
                      TextField(
                        style: TextStyle(color: Colors.white),
                        controller: email,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),
                      ),
                      SizedBox(height: 10.0,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        controller: password,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),
                        obscureText: true,
                      ),
                      SizedBox(height: 10.0,),

                      TextField(
                        style: TextStyle(color: Colors.white),
                        controller: username,
                        decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),
                      ),
                      SizedBox(height: 50.0,),

                      Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20.0)),

                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                            },

                            child: Center(
                              child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
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
                                  width: 2.0),
                              color: Colors.blue.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20.0)),

                          child: InkWell(
                            onTap: (){
                              email.clear();
                              password.clear();
                              username.clear();
                            },

                            child: Center(
                              child: Text("Cancel", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text("Already have account?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                    //  Text("New Member?", style: TextStyle(fontWeight: FontWeight.normal),),

                    SizedBox(width: 5.0,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                      },

                      child: Center(
                        child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, decoration: TextDecoration.underline)),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.0,),

                Divider(
                  color: Colors.white,
                  height: 1.0,
                ),

                SizedBox(height: 15.0,),

                Center(
                  child: Text("Or Login with", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                ),

                SizedBox(height: 15.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },

                      child: Image.asset('assets/images/icons8-google-100.png', height: 40, width: 40, fit: BoxFit.fill),

                    ),

                    SizedBox(width: 15.0,),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },

                      child: Image.asset('assets/images/icons8-facebook-100.png', height: 40, width: 40, fit: BoxFit.fill),

                    ),

                    SizedBox(width: 15.0,),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },

                      child: Image.asset('assets/images/icons8-apple-100.png', height: 40, width: 40, fit: BoxFit.fill),

                    ),

                  ],
                ),

              ],
            )
          ],
        ),)

    );
  }
}
