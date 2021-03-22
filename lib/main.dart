import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 과제'),
      ),
      body: Column(
        children: [
          TextField(),
          TextField(),
          ElevatedButton(
            onPressed: () {},
            child: Text('click'),
          ),
          Text('HI'),
          Image.network(
              'https://2.bp.blogspot.com/-dTogWBWmR3M/V0f0qaFFoLI/AAAAAAAAPfE/b-gP4X-FiWsb609AihsnqcvSEfHAp8I9QCLcB/s280/1.png')
        ],
      ),
    );
  }
}
