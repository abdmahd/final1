// ignore: unused_import
import 'package:final_project/Client/Home/HomePage.dart';
import 'package:final_project/Client/HomeClient/HomeClient.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedLogin extends StatelessWidget {
  final String text;
  final Color color, textcolor;
  const RoundedLogin({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        // ignore: deprecated_member_use
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeClient();
              }));
            },
            child: Text(
              text,
              style: TextStyle(color: textcolor),
            )),
      ),
    );
  }
}
