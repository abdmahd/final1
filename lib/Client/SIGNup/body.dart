import 'package:final_project/Client/Login/Login_Screen.dart';
import 'package:final_project/Client/Login/roundedField_container.dart';
import 'package:final_project/Client/Login/rounded_password.dart';
import 'package:final_project/Client/SIGNup/Background.dart';
import 'package:final_project/Client/SIGNup/roundedSing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.3,
          ),
          RoundedInputField(
            hintText: "First Name",
            Onchanged: (values) {},
          ),
          RoundedInputField(
            hintText: "Last Name",
            Onchanged: (values) {},
          ),
          RoundedInputField(hintText: " Email", Onchanged: (values) {}),
          RoundedPassword(Onchanged: (values) {}),
          RoundedSIGN(text: "SIGN UP"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Already have account ? ",
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
