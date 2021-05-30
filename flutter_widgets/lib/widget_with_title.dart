import 'package:flutter/material.dart';

class WidgetWithTitle extends StatelessWidget {
  final Widget? widget;
  final String? title;

  WidgetWithTitle({this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        widget!,
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
