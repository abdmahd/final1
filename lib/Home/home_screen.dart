import 'package:final_project/Home/componants/app_bar.dart';
import 'package:final_project/Home/componants/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/Home';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/artisan.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          //to make it in the middle of screen
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}
