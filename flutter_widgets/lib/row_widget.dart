import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget{

  final bigStyle = TextStyle(
      color: Colors.black,
      fontSize: 25.0
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.yellow,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
                textColor: Colors.red,
              ),
              Text("Column 2", style: bigStyle,),
              Container(
                color: Colors.green,
                height: 100.0,
                width: 100.0,
              )
            ],
          ),
        )
    );
  }

}


/*
* TODO Row of horizontal Text children with minAxis
*
* Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Column 1", style: bigStyle,),
              Text("Column 2", style: bigStyle,),
              Text("Column 3", style: bigStyle,)
            ],
          )
*
* */


/*
* TODO Row of different types of widgets
*
* Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
                colors: Colors.red,
              ),
              Text("Column 2", style: bigStyle,),
              Container(
                color: Colors.green,
                height: 100.0,
                width: 100.0,
              )
            ],
          )
*
* */

/*
* TODO CrossAxisAlignment & MainAxisAlignment
*
* Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
                colors: Colors.red,
              ),
              Text("Child Two", style: bigStyle,),
              Container(
                color: Colors.blue,
                height: 100.0,
                width: 100.0,
              )
            ],
          ),
*
* */


/*
* TODO Nested Columns and Rows
*
* Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Parent Text 1"),
              Text("Parent Text 2"),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Child Row Text 1"),
                  Text("Child Row Text 2")
                ],
              ),
            ],
          ),
*
* */