import 'package:final_project/Artisan/about.dart';
import 'package:final_project/Client/Home/HomePage.dart';
import 'package:flutter/material.dart';
import './about.dart';

class HomeArt extends StatelessWidget {
  static const routeName = '/HomeArt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        shadowColor: Colors.blue,
        foregroundColor: Colors.black,
        title: new Text("Espace-Artisan"),
      ),
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("User-Name"),
              accountEmail: new Text("Useremail@gmail.com")),
          ListTile(
            title: Text('AboutPage'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage()));
            },
          )
        ],
      )),
      body: Container(
        child: Column(
          //to make it in the middle of screen
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MenuBar(),
          ],
        ),
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            "Home page".toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// body: Container(
//        child: Column(
//        //to make it in the middle of screen
//      crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    CustomAppBar(),
//   ],),),
