import 'package:flutter/material.dart'; //this line makes the material components available for the main.dart file

void main() => runApp(MyApp()); //the method runApp takes a Widget (MyApp) as a parameter
//Thus when runApp is called by main(), the MyApp Widget will be displayed on the screen

class MyApp extends StatelessWidget{ // MyApp Widget is Stateless and has a build method that returns a Widget
  @override
  Widget build(BuildContext context){
    //in build, the MaterialApp() Widget is returned
    //Thus this application we are creating uses material design

    return MaterialApp(
      //MaterialApp is a convenience widget that wraps a number of widgets that are commonly required by material designed applications

      home: Scaffold( //Scaffold, home widget for MaterialApp and implements basic material design visual layout structure

        appBar: AppBar(
          title: Text("Welcome to Flutter, Guys"),
        ),

        body: Center(//Scaffold's body has a Center Widget thus all child widgets will be positioned at the center

          child: Column( //Column Widget is a child for Center. it is a kind of container with vertical orientation

            mainAxisAlignment: MainAxisAlignment.center, // This aligns all the chldren at center of the device
            children: <Widget>[
              Text("Hello World"),
              Text("Great to have you around!!!")
            ], //Column Widget takes <widget> as input to it's children. more children can beadded that will be drawn next to each other ivertically
          ),

        ),

      ),

    );
  }
}