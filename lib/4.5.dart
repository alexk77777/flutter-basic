import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  String _text = 'hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello World',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Text(
        _text,
        style: TextStyle(fontSize: 20),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _text='World';
          });
        },
        child: Icon(Icons.touch_app),
      ),
    );
  }
}
