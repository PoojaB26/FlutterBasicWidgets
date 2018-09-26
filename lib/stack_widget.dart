import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

}

/*
* TODO Stack of Containers of reducing size
*
* Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      ),
*
* */

/*
* TODO Playing with Alignment property
*
* Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      ),
*
* */

/*
* TODO One child on top of another using Positioned
*
* Container(
        height: 400.0,
        //color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Positioned(
                top: 0.0,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  color: Colors.green,
                ),
              ),

            ],
          ),
        ),
      ),
*
* */

/*
* TODO Playing with Positioned
*
* Container(
        height: 400.0,
        //color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Positioned(
                top: 0.0,
                bottom: 0.0,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  color: Colors.green,
                ),
              ),

            ],
          ),
        ),
      ),
*
*
* */

/*
* TODO Playing with Positioned
*
* Container(
        height: 400.0,
        width: 350.0,
        //color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 200.0,
                color: Colors.red,
              ),
              Positioned(
                right: 0.0,
                child: Container(
                  height: 250.0,
                  width: 150.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
*
* */