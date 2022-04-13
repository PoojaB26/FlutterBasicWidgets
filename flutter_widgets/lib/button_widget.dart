import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: 250.0,
                onPressed: () {},
                colorBrightness: Brightness.dark,
                color: Colors.deepPurpleAccent,
                elevation: 20.0,
                splashColor: Colors.green,
                //highlightColor: Colors.red,
                highlightElevation: 1.0,
                child: Text("Raised Button"),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) => Colors.orange.shade100),
                ),
                onPressed: () {},
                child: Text("Raised Button"),
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.resolveWith<BorderSide>(
                      (states) => BorderSide(
                          width: 2.0, color: Colors.deepPurpleAccent)),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) => Colors.orange),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20));
                  }),
                ),
                child: Text(
                  "Outlined Button",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                  color: Colors.purple,
                  splashColor: Colors.yellow,
                  icon: Icon(
                    Icons.build,
                    size: 40.0,
                  ),
                  onPressed: () {}),
              FloatingActionButton(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.mic,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
        ));
  }
}
