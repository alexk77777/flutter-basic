import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class Todo {
  bool isDone;
  String title;

  Todo(this.title, {this.isDone = false});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final _items = <Todo>[];
  var _todoController = TextEditingController();

  Widget _buildItemWidget(DocumentSnapshot doc) {
    final todo = Todo(doc['title'], isDone: doc['isDone']);
    return ListTile(
      onTap: () => _toggleTodo(doc),
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.italic,
              )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(doc),
      ),
    );
  }

  //방법 1번
  // void _addTodo(Todo todo) {
  //   //콜백 또는 promise라고 부름
  //   //단점 콜백지옥에 빠질수 있음
  //   CollectionReference query = FirebaseFirestore.instance.collection('todo');
  //   query.add({
  //     'title': todo.title,
  //     'isDone': todo.isDone,
  //   }).then((_) {
  //     setState(() {
  //       // _items.add(todo);
  //       _todoController.text = '';
  //     });
  //   }).catchError((error) {
  //     //다이얼로그 띄우기
  //   });
  // }
  // 동기(sync) & 비동기(async)
  //비동기의 대표 : streambuilder & future

  //add 방법 2번 (Future async await 방식)
  Future<void> _addTodo(Todo todo) async {
    //콜백 또는 promise라고 부름
    //단점 콜백지옥에 빠질수 있음
    CollectionReference query = FirebaseFirestore.instance.collection('todo');
    DocumentReference value = await query.add({
      'title': todo.title,
      'isDone': todo.isDone,
    });

    setState(() {
      // _items.add(todo);
      _todoController.text = '';
    });
  }

  // Map<String, dynamic> 대신 var를 사용함
//     var data = {
//       'title': todo.title,
//       'isDone': todo.isDone,
//     };
//
//   await query.add(data);
//   setState(() {
//   // _items.add(todo);
//   _todoController.text = '';
//   });
// }

  void _deleteTodo(DocumentSnapshot todo) {
    CollectionReference query = FirebaseFirestore.instance.collection('todo');
    query
        .doc(todo.id)
        .delete()
        .then((value) => print('성공'))
        .catchError((error) => print('실패'));

    //이부분 없어도 잘 돌아갈 듯
    // setState(() {
    //   _items.remove(todo);
    // });
  }

  void _toggleTodo(DocumentSnapshot todo) {
    CollectionReference query = FirebaseFirestore.instance.collection('todo');
    query
        .doc(todo.id)
        .update({'isDone':!todo['isDone']})
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed"));}



    // FirebaseFirestore.instance.collection('todo').document(doc.documentID).updateData({
    //   'isDone':!doc['isDone'],
    // });}

  //   setState(() {
  //     todo.isDone = !todo.isDone;
  //   });
  // }

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Query query = FirebaseFirestore.instance.collection('todo');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '남은 할 일',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                RaisedButton(
                  onPressed: () => _addTodo(Todo(_todoController.text)),
                  child: Text('추가'),
                )
              ],
            ),
            StreamBuilder<QuerySnapshot>(
                stream: query.snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data.docs;
                  return Expanded(
                    child: ListView(
                      children: documents
                          .map((doc) => _buildItemWidget(doc))
                          .toList(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

// // 남은 할일 연습
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class Todo {
//   bool isDone = false;
//   String title;
//
//   Todo(this.title);
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Project',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: TodoListPage(),
//     );
//   }
// }
//
// class TodoListPage extends StatefulWidget {
//   @override
//   _TodoListPageState createState() => _TodoListPageState();
// }
//
// class _TodoListPageState extends State<TodoListPage> {
//   final _items = <Todo>[];
//   var _todoController = TextEditingController();
//
//   void _addTodo(Todo todo) {
//     setState(() {
//       _items.add(todo);
//       _todoController.text = '';
//     });
//   }
//
//   void _deleteTodo(Todo todo) {
//     setState(() {
//       _items.remove(todo);
//     });
//   }
//
//   void _toggleTodo(Todo todo) {
//     setState(() {
//       todo.isDone = !todo.isDone;
//     });
//   }
//
//
//   Widget _buildItemWidget(Todo todo) {
//     return ListTile(
//       onTap: () {
//         _toggleTodo(todo);
//       },
//       title: Text(
//         todo.title,
//         style: todo.isDone
//             ? TextStyle(
//           decoration: TextDecoration.lineThrough,
//           fontStyle: FontStyle.italic,
//         )
//             : null,
//       ),
//       trailing: IconButton(
//         icon: Icon(Icons.delete_forever),
//         onPressed: () {_deleteTodo(todo);},
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '남은 할 일',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _todoController,
//                   ),
//                 ),
//                 RaisedButton(
//                   onPressed: () {
//                     _addTodo(Todo(_todoController.text));
//                   },
//                   child: Text('추가'),
//                 )
//               ],
//             ),
//             Expanded(
//                 child: ListView(
//                     children:
//                         _items.map((todo) => _buildItemWidget(todo)).toList()))
//           ],
//         ),
//       ),
//     );
//   }
// }
