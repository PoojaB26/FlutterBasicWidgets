import 'package:flutter/material.dart';
import 'package:flutter_widgets/widget_with_title.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            WidgetWithTitle(
              title: 'Rounded TextField without Outline',
              widget: TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.black),
                    hintText: "Type in your text"),
              ),
            ),
            WidgetWithTitle(
              title: 'Rounded TextField With Outline',
              widget: TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.none,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.black),
                    hintText: "Type in your text"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
