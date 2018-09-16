import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: new BoxDecoration(
          color: Colors.yellow,
          borderRadius: new BorderRadius.circular(55.0),
          border: new Border.all(
            width: 5.0,
            color: Colors.red,
          ),
        ),
        child: Center(child: const Text('Hello Flutter', textAlign: TextAlign.center)),

      ),
    );
  }
}



/*
* TODO Container containing Flutter Flutter
*
* Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: FlutterLogoDecoration(),
      ),
*
* */

/*
* TODO Container with ShapeDecoration (Red Border and Shadow)
*
* Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: new ShapeDecoration(
          color: Colors.white,
          shadows: <BoxShadow>[
            BoxShadow(color: Colors.black, blurRadius: 15.0)
          ],
          shape: new Border.all(
            color: Colors.red,
            width: 8.0,
          ),
        ),
        child: Center(child: const Text('Hello Flutter', textAlign: TextAlign.center)),
      ),
* */

/*
*  TODO Rounded Container
*
*  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: new BoxDecoration(
          color: Colors.yellow,
          borderRadius: new BorderRadius.circular(55.0),
          border: new Border.all(
            width: 5.0,
            color: Colors.red,
          ),
        ),
        child: Center(child: const Text('Hello Flutter', textAlign: TextAlign.center)),

      ),
* */


