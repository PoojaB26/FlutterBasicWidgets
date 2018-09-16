import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'text_widget.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        'Text': (BuildContext context) => TextWidget(),
        'Container' : (BuildContext context) => ContainerWidget(),
      },
    );
  }
}

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    var widgetList = ["Text", "Container" ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Playground"),
      ),
      body: ListView.builder(
          itemCount: widgetList.length,
          itemBuilder: (builder, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('${widgetList[index]}');
              },
              child: Card(
                elevation: 5.0,
                child: new Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Text(widgetList[index], style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ),
              ),
            ),
          );
      }),
    );
  }
}
