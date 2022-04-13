import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Simple AppBar with Centre Title
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Text(
          "Title",
        ),
        elevation: 4.0,
        centerTitle: true,
      ),
    );
  }
}

/*
*  TODO App Bar with a List of Action Buttons
*
*  AppBar(
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
*
* */


/*
* TODO AppBar with Different IconTheme & TextTheme
*
* AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
        ),
      ),
*
* */


/*
* TODO AppBar with only Title and Subtitle at Centre
*
* AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Title",
                style: TextStyle(fontSize: 18.0),
              ),
              new Text(
                "subtitle",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
*
* */

/*
* TODO AppBar with image
*
* AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new FlutterLogo(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: new Text(
                "Title with image",
              ),
            ),
          ],
        ),
      ),
*
* */


/*
* TODO Transparent AppBar
*
* AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Transparent AppBar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          )
        ],
      ),
*
* */