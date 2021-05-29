import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "The Artisan Best site".toUpperCase(),
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Colors.,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "description \n de  \n notre projet finnal",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
