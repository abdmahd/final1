import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final String press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        // onPressed: press,
        onPressed: () {},
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
