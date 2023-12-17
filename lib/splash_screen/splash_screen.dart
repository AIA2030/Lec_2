import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_login/main_pages/home_page.dart';
import 'package:sign_login/main_pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN ="login";

  @override

  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    var PrefrenceServices = await SharedPreferences.getInstance();
    var isLoggedIn =PrefrenceServices.getBool(KEYLOGIN);

    await Future.delayed(Duration(milliseconds: 2500), (){

      if(isLoggedIn!= null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
        }
        else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogIn()));
        }
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogIn()));
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(

                  child: Image.asset('assets/images/ai-generated-8110524.png', height: 400, width: 400, fit: BoxFit.fill),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Welcome to", style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
                    ),

                    SizedBox(width: 20,),

                    Container(
                      child: Text( "Musician.", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.blue),),
                    ),

                  ],
                )

              ]
          )
      ),
    );
  }
}
