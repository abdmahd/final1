import 'package:final_project/Admin/HomeAdmin.dart';
import 'package:final_project/Artisan/HomeArt.dart';
import 'package:final_project/Client/HomePage.dart';
import 'package:final_project/HOME/home_screen.dart';
import 'package:flutter/material.dart';

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
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HomePage.routeName:(context)=>HomePage(),
        HomeArt.routeName:(context)=>HomeArt(),
        HomeAdmin.routeName:(context)=>HomeAdmin(),
      },
    );
  }
}
