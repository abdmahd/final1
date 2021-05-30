import 'package:final_project/Client/Login/Background.dart';
import 'package:final_project/Client/Login/roundedField_container.dart';
import 'package:final_project/Client/Login/roundedLogin.dart';
import 'package:final_project/Client/Login/rounded_password.dart';
import 'package:final_project/Client/SIGNup/Sign_up.dart';
import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.5,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "your email",
            Onchanged: (value) {},
          ),
          RoundedPassword(
            Onchanged: (value) {},
          ),
          RoundedLogin(text: "LOGIN"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have account ? ",
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignScreen();
                  }));
                },
                child: Text(
                  "SIGN UP",
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
