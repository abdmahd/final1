import 'package:final_project/Client/Login/textField_container.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> Onchanged;
  const RoundedPassword({
    Key? key,
    required this.Onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      onChanged: Onchanged,
      decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none),
    ));
  }
}
