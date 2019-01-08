import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
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


/*
* TODO Container with Alignment property
*
* Container(
        margin: EdgeInsets.all(20.0),
        width: double.infinity,
        height: 300.0,
        color: Colors.red,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(20.0),
        child: FlutterLogo(size: 100.0,),
      ),
*
* */


/*
* TODO Container with Box Constraints
*
* Container(
          margin: EdgeInsets.all(20.0),
          constraints: BoxConstraints(
            maxWidth: 400.0,
            minWidth: 200.0
          ),
          width: 50.0,
          alignment: Alignment.topCenter,
          child: Image.network('https://picsum.photos/500/400'),
        ),
*
* */