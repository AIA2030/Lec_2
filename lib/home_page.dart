import 'package:flutter/material.dart';

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

        leading: IconButton (icon: Icon(Icons.menu, color: Colors.white, size: 35,), onPressed: () {  },),

        title: Center( child: Text("Musician",style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),),


        actions: [
          IconButton(icon: Icon(Icons.account_circle_rounded, color: Colors.white, size: 35),onPressed: () {  },),
        ],

        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),

          child: Column(
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

              Center(child: Text("Welcome To Musician", style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.normal),),)
            ],
          ),
        ),
      ),
    );
  }
}
