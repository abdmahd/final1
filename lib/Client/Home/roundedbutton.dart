// ignore: unused_import
import 'package:final_project/Client/Login/Login_Screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textcolor;
  const RoundedButton({
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
                return LoginScreen();
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
