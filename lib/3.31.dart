import 'dart:io';
import 'dart:math';

// //quiz1-way1
// void main() {
//   List<int> position1 = [20, 10, 10];
//   List<int> position2 = [3];
//   List<int> position3 = [25, 10,20,15,70,70];
//   Exam exam = Exam();
//   print(exam.solution(position1, position2, position3));
// }
//
// class Exam {
//   String solution(List<int> list1, List<int> list2, List<int> list3) {
//     String result = '';
//     for (int i = 0 ; i<list2[0]+2;i+=2){
//       if (pow(list3[i] - list1[0], 2) + pow(list3[i+1] - list1[1], 2) >=
//           pow(list1[2], 2)) {
//         // result =  result+'\n'+'silent';
//         result =  result+'silent'+'\n';
//       } else {
//         // result = result+'\n'+'noisy' ;
//         result = result+'noisy'+'\n' ;
//       }
//     }
//     return result;
//   }
// }

//
//
// //quiz1-way2
// void main() {
//   List<String> position1 = stdin.readLineSync().split(' ');
//   List<String> position2 = stdin.readLineSync().split(' ');
//   List<String> position3 = [];
//   List<String> list1 = [];
//
//   for (int i = 0; i < int.parse(position2[0]); i++) {
//     list1 = stdin.readLineSync().split(' ');
//     position3.add(list1[0]);
//     position3.add(list1[1]);
//   }
//   Exam exam = Exam();
//   print(exam.isNoisy(position1, position2, position3));
// }
//
// class Exam {
//   String isNoisy(List<String> list1, List<String> list2, List<String> list3) {
//     String result = '';
//     for (int i = 0; i < int.parse(list2[0]) + 2; i += 2) {
//       if (pow(int.parse(list3[i]) - int.parse(list1[0]), 2) +
//               pow(int.parse(list3[i + 1]) - int.parse(list1[1]), 2) >=
//           pow(int.parse(list1[2]), 2)) {
//         // result =  result+'\n'+'silent';
//         result = result + 'silent' + '\n';
//       } else {
//         // result = result+'\n'+'noisy' ;
//         result = result + 'noisy' + '\n';
//       }
//     }
//     return result;
//   }
// }

// //quiz1-way3
// void main() {
//   List<String> inputLine = stdin.readLineSync().split(' ');
//   int a = int.parse(inputLine[0]);
//   int b = int.parse(inputLine[1]);
//   int R = int.parse(inputLine[2]);
//   int N = int.parse(stdin.readLineSync());
//   // 공원 생성
//   // 공사장을 공원에 셋팅
//   for (int i = 0; i < N; i++) {
//     List<String> inputLine = stdin.readLineSync().split(' ');
//     int x = int.parse(inputLine[0]);
//     int y = int.parse(inputLine[1]);
//     Gongsajang gongsajang = Gongsajang(a, b, R);
//     Tree tree = Tree(x, y);
//     print(gongsajang.isNoisy(tree));
//     // 나무를 생성
//     // 시끄러운지 판단해서 출력
//   }
// }
//quiz1-way4(교수님 방법)
void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  int a = int.parse(inputLine[0]);
  int b = int.parse(inputLine[1]);
  int R = int.parse(inputLine[2]);
  Gongsajang gongsajang = Gongsajang(a, b, R);
  Park park = Park();
  int N = int.parse(stdin.readLineSync());
  for (int i = 0; i < N; i++) {
    List<String> inputLine = stdin.readLineSync().split(' ');
    int x = int.parse(inputLine[0]);
    int y = int.parse(inputLine[1]);
    // 나무를 생성
    // 시끄러운지 판단해서 출력
    Tree tree = Tree(x, y);
    park.trees.add(tree);
  }
  // print
  for (Tree tree in park.trees) {
    if (gongsajang.isNoisy(tree)) {
      print('noisy');
    } else {
      print('silent');
    }
  }
}
class Tree {
  int x;
  int y;
  Tree(this.x, this.y);
}
class Gongsajang {
  int a;
  int b;
  int R;
  Gongsajang(this.a, this.b, this.R);
  bool isNoisy(Tree tree) {
    if ((tree.x - a) * (tree.x - a) + (tree.y - b) * (tree.y - b) >= R * R) {
      return false;
    }
    return true;
  }
}
class Park {
  List<Tree> trees = [];
}



// 20 10 10
// 3
// 25 10
// 20 15
// 70 70


// //quiz1-way4
// void main() {
//   List<String> inputLine = stdin.readLineSync().split(' ');
//   int a = int.parse(inputLine[0]);
//   int b = int.parse(inputLine[1]);
//   int R = int.parse(inputLine[2]);
//   Gongsajang gongsajang = Gongsajang(a, b, R);
//   Park park = Park();
//   int N = int.parse(stdin.readLineSync());
//   for (int i = 0; i < N; i++) {
//     List<String> inputLine = stdin.readLineSync().split(' ');
//     int x = int.parse(inputLine[0]);
//     int y = int.parse(inputLine[1]);
//     // 나무를 생성
//     // 시끄러운지 판단해서 출력
//     Tree tree = Tree(x, y);
//     park.trees.add(tree);
//   }
//   // print
//   for (Tree tree in park.trees) {
//     if (gongsajang.isNoisy(tree)) {
//       print('noisy');
//     } else {
//       print('silent');
//     }
//   }
// }
// class Tree {
//   int x;
//   int y;
//   Tree(this.x, this.y);
// }
// class Gongsajang {
//   int a;
//   int b;
//   int R;
//   Gongsajang(this.a, this.b, this.R);
//   bool isNoisy(Tree tree) {
//     if ((tree.x - a) * (tree.x - a) + (tree.y - b) * (tree.y - b) >= R * R) {
//       return false;
//     }
//     return true;
//   }
// }
// class Park {
//   List<Tree> trees = [];
// }
// 20 10 10
// 3
// 25 10
// 20 15
// 70 70

//
// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   String result = '';
//   for (int i = 0; i < input.length; i++) {
//     String ch = input[i];
//     if (ch == 'A') {
//       result += '4';
//     } else if (ch == 'E') {
//       result += '3';
//     } else if (ch == 'G') {
//       result += '6';
//     } else if (ch == 'I') {
//       result += '1';
//     } else if (ch == 'O') {
//       result += '0';
//     } else if (ch == 'S') {
//       result += '5';
//     } else if (ch == 'Z') {
//       result += '2';
//     } else {
//       result = result + ch;   // result += ch;
//     }
//   }
//   print(result);
// }
//
//
// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// class Leet {
//   String word;
//   Leet(this.word);
//   String toLeet() {
//     String result = '';
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i];
//       if (ch == 'A') {
//         result += '4';
//       } else if (ch == 'E') {
//         result += '3';
//       } else if (ch == 'G') {
//         result += '6';
//       } else if (ch == 'I') {
//         result += '1';
//       } else if (ch == 'O') {
//         result += '0';
//       } else if (ch == 'S') {
//         result += '5';
//       } else if (ch == 'Z') {
//         result += '2';
//       } else {
//         result = result + ch;   // result += ch;
//       }
//     }
//     return result;
//   }
// }
//
// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // Map : 자료를 저장하는 방법 중 하나
//   var rule = {
//     'A': '4',
//     'E': '3',
//     'G': '6',
//     'I': '1',
//     'O': '0',
//     'S': '5',
//     'Z': '2',
//   };
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       String converted = rule[ch]; // 변경된 한글자
//       if (converted == null) {
//         // 변경했더니 null이면
//         result = result + ch; // 원래 한글자를 붙이고
//       } else {
//         result = result + converted; // null이 아니면 변경된 한글자를 붙인다
//       }
//     }
//     // 결과를 리턴
//     return result;
//   }
// }
//
//
// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // Map : 자료를 저장하는 방법 중 하나
//   var rule = {
//     'A': '4',
//     'E': '3',
//     'G': '6',
//     'I': '1',
//     'O': '0',
//     'S': '5',
//     'Z': '2',
//   };
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       result += rule[ch] ?? ch;
//     }
//     // 결과를 리턴
//     return result;
//   }
// }
//
// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // 변수의 이름은 명사로 한다. 메서드의 이름은 동사로 시작한다
//   List<String> original = ['A', 'E', 'G', 'I', 'O', 'S', 'Z'];
//   List<String> change = ['4', '3', '6', '1', '0', '5', '2'];
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       String converted = ch;
//       for (int j = 0; j < original.length; j++) {
//         if (ch == original[j]) {
//           converted = change[j];
//           break;
//         }
//       }
//       result += converted;
//     }
//     // 결과를 리턴
//     return result;
//   }
// }
//
//
//
// void main() {
//   // for (int dan = 2; dan <= 9; dan++) {
//   //   for (int j = 1; j <= 9; j++) {
//   //     print('$dan * $j = ${dan * j}');
//   //   }
//   // }
//   // 1 ~ 5 의 합을 구하자
//   int result = 0;
//   for (int i = 1; i <= 5; i++) {
//     result += i;
//   }
//   // print(result);
//   // print([1, 2, 3, 4, 5].reduce((value, element) => value + element));
//   var list = [1, 2, 3, 4, 5];
//   // for (int i = 0; i < list.length; i++) {
//   //   print('${i + 1}일');
//   // }
//   // ['1일', 2, 3, 4, 5]
//   list.map((e) => '$e일').forEach((e) => print(e));
//   list.map((e) => '$e일').forEach(print);
// }
//
//
//
// void main() {
//   // for (int dan = 2; dan <= 9; dan++) {
//   //   for (int j = 1; j <= 9; j++) {
//   //     print('$dan * $j = ${dan * j}');
//   //   }
//   // }
//   // 1 ~ 5 의 합을 구하자
//   int result = 0;
//   for (int i = 1; i <= 5; i++) {
//     result += i;
//   }
//   // print(result);
//   // print([1, 2, 3, 4, 5].reduce((value, element) => value + element));
//   var list = [1, 2, 3, 4, 5];
//   // for (int i = 0; i < list.length; i++) {
//   //   if (list[i] % 2 == 0) {
//   //     print('${i + 1}일');
//   //   }
//   // }
//   // ['1일', 2, 3, 4, 5]
//   // list.map((e) => '$e일').forEach((e) => print(e));
//   list.map((e) {
//     if (e % 2 == 0) {
//       return '$e일';
//     } else {
//       return e;
//     }
//   }).forEach(print);
// }