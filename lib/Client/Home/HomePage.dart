import 'package:flutter/material.dart';
import 'body.dart';

class HomePage extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  static const routeName = '/HomePage';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
