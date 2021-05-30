import 'package:final_project/Artisan/HomeArtisan.dart';
import 'package:final_project/Client/Login/Login_Screen.dart';
import 'package:final_project/Client/SIGNup/Sign_up.dart';
import 'package:flutter/material.dart';

import 'Client/Home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        HomeArt.routeName: (context) => HomeArt(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignScreen.routeName: (context) => SignScreen(),
      },
    );
  }
}
