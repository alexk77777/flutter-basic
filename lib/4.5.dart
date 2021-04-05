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
//       theme: ThemeData(primaryColor: Colors.orange),
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
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      // theme
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  var _index = 'Hello';

  // List _page = [
  //   Page1(),
  //   Page2(),
  //   Page3(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '복잡한 UI',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        // centerTitle: true,
        // actions: [IconButton(icon: Icon(Icons.add), onPressed: () {
        //   setState(() {
        //     _index++;
        //   });
        // })],
      ),
      body: Text(
        _index,
      ),
      // body: _page[_index],
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (index) {
      //     setState(() {
      //       _index = index;
      //     });
      //   },
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
      //     BottomNavigationBarItem(icon: Icon(Icons.assignment), label: '이용서비스'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle), label: '내정보'),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index = 'World';
          });
        },
        child: IconButton(
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('1페이지입니다'),
//     );
//   }
// }
//
// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('2페이지입니다'),
//     );
//   }
// }
//
// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('3페이지입니다'),
//     );
//   }
// }
