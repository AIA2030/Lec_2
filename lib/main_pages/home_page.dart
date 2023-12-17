import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_login/login_page/sign_in.dart';
import 'package:sign_login/main_pages/login_page.dart';
import 'package:sign_login/splash_screen/splash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        leading: IconButton (icon: Icon(Icons.menu, color: Colors.white, size: 35,), onPressed: () {

          },),

        title: Center( child: Text("Musician.",style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),),


        actions: [
          IconButton(icon: Icon(Icons.account_circle_rounded, color: Colors.white, size: 35),onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
          },),
        ],

        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(40),

          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 100.0, 0.0, 0.0),
                    child: Image.asset('assets/images/ai-generated-8179914.png', height: 500, width: 250, fit: BoxFit.fill),
                  ),

                  SizedBox(width: 10,),

                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 100.0, 0.0, 0.0),
                    child: Image.asset('assets/images/ai-generated-8179915.png', height: 500, width: 250, fit: BoxFit.fill),
                  ),

                  SizedBox(width: 10,),

                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 100.0, 0.0, 0.0),
                    child: Image.asset('assets/images/ai-generated-8181541.jpg', height: 500, width: 250, fit: BoxFit.fill),
                  ),

                  SizedBox(width: 10,),

                ],
              ),

              SizedBox(width: 20,),

              Divider(
                color: Colors.white,
                height: 1.0,
              ),

              SizedBox(width: 20,),

              Center(child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text("Welcome to", style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(width: 20,),

                  Container(
                    child: Text( "Musician.", style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.blue),),
                  ),

                ],
              ),),

              SizedBox(width: 20,),

              Center(child:Container(
                height: 40.0,
                width: 200.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 0.2),
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20.0)),

                  child: InkWell(
                    onTap: () async {
                      var PrefrenceServices = await SharedPreferences.getInstance();
                      PrefrenceServices.remove(SplashScreenState.KEYLOGIN);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));

                    },

                    child: Center(
                      child: Text("Log Out", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,)),
                    ),
                  ),
                ),
              ),)
            ],
          ),]
        ),
      ),
    );
  }
}
