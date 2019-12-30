import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipePage.dart';
import 'countdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('A', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
            Text('ERO', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            Text('P', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
            Text('RESS', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            Text('TIMER', style: TextStyle(color: Colors.white, fontSize: 18),)
          ],
        ),
      ),
      body: 
      Container(
        color: Colors.black87,
        child:
          ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(2),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.pink),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Classic', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.purple),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Charger', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeChargerRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.deepPurple),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Inverted', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeInvertedRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.blueAccent),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Bold', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.blue),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Weaver', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.lightBlue),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Iced', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.green),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Charlee', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),
              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.pink),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Jay', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),

              Padding(padding: EdgeInsets.all(5),),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Row(children: <Widget>[
                  Icon(Icons.local_drink, color: Colors.pink),
                  Padding(padding: EdgeInsets.all(10),),
                  Text('The Collective', style: TextStyle(color: Colors.white),)
                ],),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecipePage(makeClassicRecipe())))
              ),
            ],
          ),
      )
    );
  }
}
