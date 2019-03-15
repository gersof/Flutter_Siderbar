import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('My Sider bar')),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Juan Esteban Angulo'),
              accountEmail: new Text('micorreopersonal@micorreo.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}