# Basic Widgets Examples

This is aimed for complete beginners in Flutter, to get them acquainted with the various basic widgets in Flutter. 

## Run this project
* Fork this project.
* Rename the directory to "flutter_widgets" or something with all_lowercase_and_underscore. (Unfortunately Flutter doesnt like CamelCases)
* In your terminal, run <code>flutter create . </code> This will create the android and iOS projects for you. 
* Run in your emulator or simulator. 

**OR** you can always copy the examples from here and try it out in your apps. 

# Examples

## Text

<table>
  <tr><td> <b>Play with Text properties and styles</b> </td></tr>
  <tr>
<td>
  <pre> 
  Text(
          "Hello Flutter It is Awesome WOW",
          textAlign: TextAlign.right,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50.0,
              fontWeight: FontWeight.w200,
              letterSpacing: 2.0,
              wordSpacing: 40.0,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.wavy),
        ), 
        </pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/text1.png" width = 200>
</td>
</tr>
  </table>

## AppBar
<table>
  <tr><td> <b>AppBar with Title</b> </td></tr>
  <tr>
    <td>
      <pre>
      AppBar(
        backgroundColor: Colors.red,
        title: new Text("Title",),
        elevation: 4.0,
      ),
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb1.png" width=200></tr>
    <tr><td> <b>AppBar with List of Actions</b> </td></tr>
  <tr>
    <td>
      <pre>
       AppBar(
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
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb2.png" width=200></tr>
    <tr><td> <b>AppBar with Text and Icon Themes</b> </td></tr>
   <tr>
    <td>
      <pre>
     AppBar(
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
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb3.png" width=200></tr>
    <tr><td> <b>AppBar with centered Title and Subtitle</b> </td></tr>
   <tr>
    <td>
      <pre>
    AppBar(
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
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb5.png" width=200></tr>
    <tr><td> <b>AppBar with Logo</b> </td></tr>
   <tr>
    <td>
      <pre>
     AppBar(
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
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb6.png" width=200></tr>
    <tr><td> <b>Transparent AppBar</b> </td></tr>
   <tr>
    <td>
      <pre>
     AppBar(
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
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb7.png" width=200></tr>
  
  
  </table>

## Container
<table>
    <tr><td> <b>Container with full-device sized Flutter Logo</b> </td></tr>
          <tr>
                    <td>
                              <pre>
     Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: FlutterLogoDecoration(),
      ),
                              </pre>
                    </td> <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/con1.png" width = 200> </td></tr>      <tr><td> <b>Container with shadow, border, and child</b> </td></tr>
                    <tr><td>
                              <pre>
      Container(
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
                              </pre>
                    </td><td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/con2.png" width = 200></td>
  </tr>
      <tr><td> <b>Rounded rectangle containers with border</b> </td></tr>
    <tr>
      <td>
       <pre>
     Container(
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
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/con3.png" width = 200></td>
</tr></table>
          
## Column

<table>    <tr><td> <b>Simple Column of similar Text children</b> </td></tr>
  <tr>
    <td>
      <pre>
      Column(
          children: <Widget>[
            Text("Column 1", style: bigStyle,),
            Text("Column 2", style: bigStyle,),
            Text("Column 3", style: bigStyle,)
          ],
        )
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/col1.png" width=200></td>
  </tr>
          <tr><td> <b>Column of different Widget children</b> </td></tr>
  <tr>
    <td>
      <pre>
      Column(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/col2.png" width=200></td>
    <tr><td> <b>Playing with MainAxisAlignment</b> </td></tr>
  </tr>    
  <tr>
    <td>
      <pre>
      Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/col3.png" width=200></td>
  <tr><td> <b>Column having Row as child</b> </td></tr>
  </tr>  
    <tr>
    <td>
      <pre>
      Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Parent Text 1"),
              Text("Parent Text 2"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Child Row Text 1"),
                  Text("Child Row Text 2")
                ],
              ),
            ],
          ),
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/col4.png" width=200></td>
  </tr>    
</table>


## Row
          
<table><tr><td> <b>Simple Row of similar Text children</b> </td></tr>
  <tr>
    <td>
      <pre>
      Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Column 1", style: bigStyle,),
              Text("Column 2", style: bigStyle,),
              Text("Column 3", style: bigStyle,)
            ],
          )
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/row1.png" width=200></td>
  </tr>
  <tr><td> <b>Row with children of different Widgets</b></td></tr>    
  <tr>
    <td>
      <pre>
      Row(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/row2.png" width=200></td>
    <tr><td> <b>Playing with MainAxisAlignment</b> </td></tr>
  </tr>    
  <tr>
    <td>
      <pre>
      Row(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/row3.png" width=200></td>
  </tr>  <tr><td> <b>Row having Column as child</b> </td></tr>
    <tr>
    <td>
      <pre>
      Row(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/row4.png" width=200></td>
  </tr>    
</table>


## Buttons
          
<table>
  <tr>
    <td>
      <pre>
     RaisedButton(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but1.gif" width=200></td>
  </tr>
      
  <tr>
    <td>
      <pre>
     MaterialButton(
          minWidth: 250.0,
          onPressed: (){},
          colorBrightness: Brightness.dark,
          color: Colors.deepPurpleAccent,
          elevation: 20.0,
          splashColor: Colors.green,
          //highlightColor: Colors.red,
          highlightElevation: 1.0,
          child: Text("Material Button"),
        ),
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but2.gif" width=200></td>
  </tr>    
  <tr>
    <td>
      <pre>
      FlatButton(
          onPressed: (){},
          colorBrightness: Brightness.dark,
          color: Colors.deepPurpleAccent,
          splashColor: Colors.green,
          highlightColor: Colors.red,
          child: Text("Raised Button"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20.0), right: Radius.circular(1.0))
          ),
        ),
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but3.gif" width=200></td>
  </tr>  
    <tr>
    <td>
      <pre>
     OutlineButton(
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
            borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0), bottom: Radius.circular(1.0))
          ),
        ),
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but4.gif" width=200></td>
  </tr>    
      <tr>
    <td>
      <pre>
     IconButton(
            color: Colors.purple,
            splashColor: Colors.yellow,
           // highlightColor: Colors.red,
            icon: Icon(Icons.build, size: 40.0,),
            onPressed: (){})
      ),
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but5.gif" width=200></td>
  </tr>    
</table>



## Contributors
Pooja Bhaumik <br>

[![Twitter Follow](https://img.shields.io/twitter/follow/pblead26.svg?style=social&label=Follow)](https://twitter.com/pblead26)


## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
