# Basic Widgets Examples

This is aimed for complete beginners in Flutter, to get them acquainted with the various basic widgets in Flutter. 

## Run this project

**EDIT** : 
No need of running the project, simply run the code in the new official Flutter online compiler [DartPad](https://dartpad.dartlang.org/flutter). All the DartPad links are given along with the example.

#### Still want to run the project?

* Fork this project.
* Rename the directory to "flutter_widgets" or something with all_lowercase_and_underscore. (Unfortunately Flutter doesnt like CamelCases)
* In your terminal, run <code>flutter create . </code> This will create the android and iOS projects for you. 
* Run in your emulator or simulator. 

### This project helped you? Buy me a cupcake to support me! [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/PoojaBhaumik)
 
# Examples

## Text

### Try out Text widget and it's properties directly from [DartPad](https://dartpad.dev/d548285fd710d4c94cb1ff59835b85bd)


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
  <img src = "https://github-bucket-2604.s3.us-east-2.amazonaws.com/Screenshot+2020-04-21+at+05.53.51.png" width = 200>
</td>
</tr>
  </table>
  
## AppBar

### Try AppBar examples directly from [DartPad](https://dartpad.dev/bd6bb228f0be205648a74490f35f776f)

<table>
  <tr><td> <b>AppBar with Title</b> </td></tr>
  <tr>
    <td>
      <pre>
      AppBar(
        backgroundColor: Colors.red,
        title: Text("Title",),
        elevation: 4.0,
      ),
      </pre></td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/appb1.png" width=200></tr>
    <tr><td> <b>AppBar with List of Actions</b> </td></tr>
  <tr>
    <td>
      <pre>
       AppBar(
        title: Text("Title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
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
        title: Text("Title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
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
              Text(
                "Title",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
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
            FlutterLogo(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
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

### Try Container examples directly from [DartPad](https://dartpad.dev/a30023e2cb47793f2d7d586a3d791dee)

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
                    </td> <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con1.png" width = 200> </td></tr>      <tr><td> <b>Container with shadow, border, and child</b> </td></tr>
                    <tr><td>
                              <pre>
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shadows: <BoxShadow>[
            BoxShadow(color: Colors.black, blurRadius: 15.0)
          ],
          shape: Border.all(
            color: Colors.red,
            width: 8.0,
          ),
        ),
        child: Center(child: const Text('Hello Flutter', textAlign: TextAlign.center)),
      ),
                              </pre>
                    </td><td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con2.png" width = 200></td>
  </tr>
      <tr><td> <b>Rounded rectangle containers with border</b> </td></tr>
    <tr>
      <td>
       <pre>
     Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(55.0),
          border: Border.all(
            width: 5.0,
            color: Colors.red,
          ),
        ),
        child: Center(child: const Text('Hello Flutter', textAlign: TextAlign.center)),
      ),
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con3.png" width = 200></td>
</tr>
<tr><td> <b>Container with alignment property</b> </td></tr>
    <tr>
      <td>
       <pre>
    Container(
        margin: EdgeInsets.all(20.0),
        width: double.infinity,
        height: 300.0,
        color: Colors.red,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(20.0),
        child: FlutterLogo(size: 100.0,),
      ),
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con4.png" width = 200></td>
</tr>
 <tr><td> <b>Container with minWidth and maxWidth Box Constraints</b> </td></tr>
    <tr>
      <td>
       <pre>
   Container(
          margin: EdgeInsets.all(20.0),
          constraints: BoxConstraints(
            maxWidth: 400.0,
            minWidth: 200.0
          ),
          width: 50.0,
          alignment: Alignment.topCenter,
          child: Image.network('https://picsum.photos/500/400'),
        ),
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con5.png" width = 200></td>
</tr>
  <tr><td> <b>Container with List of Box Shadow</b> </td></tr>
    <tr>
      <td>
       <pre>
  Container(
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
              BoxShadow(color: Colors.red, blurRadius: 12.0 ),
              BoxShadow(color: Colors.green, blurRadius: 40.0)
              ]
          ),
        )
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con6.png" width = 200></td>
</tr>
 <tr><td> <b>Container with Image and Rounded Border</b> </td></tr>
    <tr>
      <td>
       <pre>
  Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              image: DecorationImage(fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/200/300'))
          ),
        )
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con7.png" width = 200></td>
</tr>
 <tr><td> <b>Circular Container</b> </td></tr>
    <tr>
      <td>
       <pre>
   Container(
          height: 200.0,
          width: 200.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
              color: Colors.green,
          ),
          child: Text('Hello'),
        )
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con8.png" width = 200></td>
</tr>
 <tr><td> <b>Container with Horizontal Radius of left and right Radius</b> </td></tr>
    <tr>
      <td>
       <pre>
  Container(
          height: 200.0,
          width: 200.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0),
              right: Radius.circular(80.0)
            ),
              color: Colors.green,
          ),
          child: Text('Hello'),
        )
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con9.png" width = 200></td>
</tr>
  <tr><td> <b>Container with Vertical Radius of top and bottom Radius</b> </td></tr>
    <tr>
      <td>
       <pre>
 Container(
          height: 200.0,
          width: 200.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
              bottom: Radius.circular(80.0)
            ),
              color: Colors.green,
          ),
          child: Text('Hello'),
        )
      </pre>
      </td>
      <td><img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/con10.png" width = 200></td>
</tr>


</table>
          
## Column

### Try Column examples directly from [DartPad](https://dartpad.dev/f814f180582790d428eb70df4092403d)

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
  
### Try Row examples directly from [DartPad](https://dartpad.dev/564ca3391b28bc035e675ea86c4355ef)

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
          
### Try Buttons examples directly from [DartPad](https://dartpad.dev/b4fb1e9bd187d4a808f85d962f63e9d1)
          
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
  <tr>
    <td>
      <pre>
    Column(
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
      </pre>
    </td><td><img src="https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/but6.png" width=200></td>
  </tr>
</table>


## Stack

### Try Stack examples directly from [DartPad](https://dartpad.dev/8452d46bb69207184364d90102855257)

<table>
  <tr><td> <b>Stack of overlapping containers of reducing size</b> </td></tr>
  <tr>
<td>
  <pre> 
  Stack(
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
        </pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/stk1.png" width = 200>
</td>
</tr>
  
  
  <tr><td> <b>Playing with Alignment property</b> </td></tr>
  <tr>
<td>
  <pre> 
  Stack(
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
      ),</pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/stk2.png" width = 200>
</td>
</tr>


 <tr><td> <b>One child on top of another using Positioned</b> </td></tr>
  <tr>
<td>
  <pre> 
  Container(
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
        </pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/stk3.png" width = 200>
</td>
</tr>


 <tr><td> <b>Playing with Positioned properties</b> </td></tr>
  <tr>
<td>
  <pre> 
  Container(
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
        </pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/stk4.png" width = 200>
</td>
</tr>


 <tr><td> <b>Playing with Positioned</b> </td></tr>
  <tr>
<td>
  <pre> 
  Container(
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
        </pre>
</td>
<td>
  <img src = "https://github.com/PoojaB26/FlutterBasicWidgets/blob/master/screenshots/stk5.png" width = 200>
</td>
</tr>
  </table>

## TextFields
  
### Try TextFields examples directly from [DartPad]()

<table><tr><td> <b>Rounded TextField without Outline</b> </td></tr>
  <tr>
    <td>
      <pre>
     TextField(
    decoration: new InputDecoration(
        border: new OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: new TextStyle(color: Colors.grey[800]),
        hintText: "Type in your text",
        fillColor: Colors.white),
  );
      </pre>
    </td><td><img src="https://github-bucket-2604.s3.us-east-2.amazonaws.com/Screenshot+2020-04-25+at+03.13.09.png" width=200></td>
  </tr>  
 
 <tr><td> <b>Rounded TextField With Outline</b> </td></tr>
 <tr>
    <td>
      <pre>
     TextField(
    decoration: new InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: new TextStyle(color: Colors.grey[800]),
        hintText: "Type in your text",
        fillColor: Colors.white),
  );
      </pre>
    </td><td><img src="https://github-bucket-2604.s3.us-east-2.amazonaws.com/Screenshot+2020-04-25+at+03.12.51.png" width=200></td>
  </tr> 
</table>

## Contributors
Pooja Bhaumik <br>

[![Twitter Follow](https://img.shields.io/twitter/follow/pblead26.svg?style=social&label=Follow)](https://twitter.com/pblead26)



## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
