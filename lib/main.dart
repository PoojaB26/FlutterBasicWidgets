import 'package:flutter/material.dart';
import 'package:flutter_widgets/container_widget.dart';
import 'package:flutter_widgets/text_widget.dart';
import 'package:flutter_widgets/appar_widget.dart';
import 'package:flutter_widgets/column_widget.dart';
import 'package:flutter_widgets/row_widget.dart';
import 'package:flutter_widgets/button_widget.dart';
import 'package:flutter_widgets/stack_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        'Text': (BuildContext context) => TextWidget(),
        'Appbar': (BuildContext context) => AppBarWidget(),
        'Container' : (BuildContext context) => ContainerWidget(),
        'Column' : (BuildContext context) => ColumnWidget(),
        'Row' : (BuildContext context) => RowWidget(),
        'Button' : (BuildContext context) => ButtonWidget(),
        'Stack' : (BuildContext context) => StackWidget(),


      },
    );
  }
}

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    var widgetList = ["Text", "Appbar", "Container",
    "Column", "Row", "Button", "Stack" ];

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
