import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
                backgroundColor: Colors.orange,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){}),
            FloatingActionButton(
                mini: true,
                backgroundColor: Colors.green,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){}),
          ],
        )
      ),
    );
  }

}

/*
* TODO RaisedButton
*
* RaisedButton(
          onPressed: (){},
          color: Colors.yellow,
          disabledTextColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          elevation: 20.0,
          splashColor: Colors.green,
          highlightColor: Colors.red,
          highlightElevation: 1.0,
          child: Text("Raised Button"),
        ),
*
* */


/*
* TODO MaterialButton
*
* MaterialButton(
          minWidth: 250.0,
          onPressed: (){},
          colorBrightness: Brightness.dark,
          color: Colors.deepPurpleAccent,
          elevation: 20.0,
          splashColor: Colors.green,
          //highlightColor: Colors.red,
          highlightElevation: 1.0,
          child: Text("Raised Button"),
        ),

* */

/*
* TODO FlatButton
*
* FlatButton(
          onPressed: (){},
          colorBrightness: Brightness.dark,
          color: Colors.deepPurpleAccent,
          splashColor: Colors.green,
          highlightColor: Colors.red,
          child: Text("Raised Button"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0), right: Radius.circular(1.0))
          ),
        ),
*
* */


/*
* TODO OutlineButton
*
* OutlineButton(
          onPressed: (){},
          borderSide: BorderSide(
            width: 5.0,
            color: Colors.deepPurpleAccent
          ),
          color: Colors.deepPurpleAccent,
          highlightedBorderColor: Colors.purple,
          splashColor: Colors.green,
          //highlightColor: Colors.red,
          child: Text("Raised Button"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0), bottom: Radius.circular(1.0))
          ),
        ),
*
* */


/*
* TODO IconButton
*
* IconButton(
            color: Colors.purple,
            splashColor: Colors.yellow,
           // highlightColor: Colors.red,
            icon: Icon(Icons.build, size: 40.0,),
            onPressed: (){})
      ),

* */

/*
* TODO Simple Circular Button using FloatingActionButton (Mini and Normal Size)
*
* FloatingActionButton(
                backgroundColor: Colors.orange,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){}),


* FloatingActionButton(
                mini: true,
                backgroundColor: Colors.green,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){}),
* */