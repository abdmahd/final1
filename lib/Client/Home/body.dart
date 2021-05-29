import 'package:final_project/Client/Home/roundedbutton.dart';
import 'package:final_project/Client/Home/signuprounded.dart';
// ignore: unused_import
import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Welcome to our Web Site",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoundedButton(
              text: "LOGIN",
            ),
            ButtonSignup(
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              text: "SING UP",
            )
          ],
        ),
      ),
    );
  }
}
