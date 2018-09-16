import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Hello Flutter",
        ),
      ),
    );
  }
}

/*
* Text(
          "Hello Flutter It is Awesome WOW",
          textAlign: TextAlign.right,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50.0,
              fontWeight: FontWeight.w200,
              letterSpacing: 2.0,
              wordSpacing: 40.0,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.wavy),
        ),
*
* */