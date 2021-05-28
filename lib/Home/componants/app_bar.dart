import 'package:final_project/Client/HomePage.dart';
import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

import 'components/default_button.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 30,
              color: Colors.blue,
            ),
          ],
        ),
        child: Row(children: <Widget>[
          Image.asset(
            "assets/images/artisanlogo.jpg",
            height: 60,
            width: 60,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 2),
          Text(
            "Artisan".toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          MenuItem(
            title: "Client-Area",
            press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
          ),
          MenuItem(
            title: "Artisan-Area",
            press: () {},
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),
          MenuItem(
            title: "About",
            press: () {},
          ),
          DefaultButton(
            text: "Contenue as guest",
            press: '',
          )
        ]));
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const MenuItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
