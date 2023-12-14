import 'package:flutter/material.dart';
import 'package:sign_login/login_page.dart';
import 'package:sign_login/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff181c27),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Musician'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //
      //   leading: IconButton (icon: Icon(Icons.menu), onPressed: () {  },),
      //
      //   title: Center( child: Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),),
      //
      //
      //   actions: [
      //     IconButton(icon: Icon(Icons.account_circle_rounded),onPressed: () {  },),
      //   ],
      //
      //   backgroundColor: Colors.blue,
      //
      // ),

      body: LogIn (),
    );
  }
}
