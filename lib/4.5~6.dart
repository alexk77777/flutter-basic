// 1번째 연습 : stateful widget 연습
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: MyAppPage(),
//     );
//   }
// }
//
// class MyAppPage extends StatefulWidget {
//   _MyAppPageState createState() => _MyAppPageState();
// }
//
// class _MyAppPageState extends State<MyAppPage> {
//   String _text = 'hello';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Hello World',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//       body: Text(
//         _text,
//         style: TextStyle(fontSize: 20),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _text='World';
//           });
//         },
//         child: Icon(Icons.touch_app),
//       ),
//     );
//   }
// }
//
// // 2번째 연습 : 어플만들기 연습
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'kakao project',
//       // theme: ThemeData(primaryColor: Colors.orange),
//       home: MyAppPage(),
//     );
//   }
// }
//
// class MyAppPage extends StatefulWidget {
//   @override
//   _MyAppPageState createState() => _MyAppPageState();
// }
//
// class _MyAppPageState extends State<MyAppPage> {
//   var _index = 0;
//   var _page = [
//     Page1(),
//     Page2(),
//     Page3(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           '복잡한 UI',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
//       ),
//       body:_page[_index],
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//
//           // BottomNavigationBarItem(label: 'Home', icon: ImageIcon(AssetImage("assets/bird.png"),size: 200,color: Color(0xFF3A5A98),)),
//
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
//           BottomNavigationBarItem(icon: Icon(Icons.assignment), label: '이용서비스'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle), label: '내정보'),
//         ],
//         onTap: (index) {
//           setState(() {
//             _index = index;
//           });
//         },
//         currentIndex: _index,
//         // onTap:,
//       ),
//     );
//   }
// }
//
// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(child: Text('페이지1 입니다')),
//     );
//   }
// }
//
// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(child: Text('페이지2 입니다')),
//     );
//   }
// }
//
// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(child: Text('페이지3 입니다')),
//     );
//   }
// }
//

// 연습

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  var _index = 0;
  List _pageList = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KaKao T',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: _pageList[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service), label: '이용서비스'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '내 정보'),
        ],
        currentIndex: _index, //??
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭 됩니다');
                _showDialog();

              },
              child: Column(
                children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
              ),
            ),
            Column(
              children: [
                Image.network(
                  'src',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                Text('택시')
              ],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Text('Top');
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Text('Top');
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
