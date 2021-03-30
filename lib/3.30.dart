import 'dart:io';
import 'dart:math';

// //quiz1
// void main() {
//   Exam exam = Exam();
//   print(exam.Solution(60, 90));
// }
//
// class Exam {
//   int Solution(int a, int b) {
//     int c = 180 - a - b;
//     return c;
//   }
// }

// //quiz2
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(3));
// }
//
// class Exam {
//   int solution(int a) {
//     int result = 7 - a;
//     return result;
//   }
// }

// //quiz3
// void main() {
//   Exam exam = Exam();
//   print(exam.solution());
// }
//
// class Exam {
//   String solution() {
//     var solu;
//     var input = stdin.readLineSync();
//     for (int i = 0; i < input.length-1; i++) {
//       if (input.substring(i, i + 1) == input.substring(i + 1, i + 2)) {
//         solu = input;
//       } else {
//         solu = 'No';
//       }
//     }return solu;
//   }
// }

// //quiz4
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(20, 20));
// }
//
// class Exam {
//   var result;
//   String solution(int a, int b){
//     if (a==b){result = 'eq';}
//     else{result = max(a,b).toString();
//   }
//     return result;
//   }
// }

//quiz5
void main() {
  List<String> inputs = ['JAVA', 'JINO','a','b'];
  Exam exam = Exam();
  print(exam.solution(inputs));
}

class Exam {
  String solution(List<String> list) {
    String result = '';
    for (int i = 0; i < list.length; i++) {
      if (i<list.length-1) {
        result += list[i] + ', ';
      } else{
        result += list[i] + '.';
      }
    }
    return 'Hello ' + result;
  }
}
//
// //quiz6
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(5, 3));
// }
//
// class Exam {
//   String solution(int a, int b) {
//     int start = a;
//     var result = a.toString() + " ";
//     for (int i = 0; i < 9; i++) {
//       start += b;
//       result += start.toString() + " ";
//     }
//     return result;
//   }
// }

// //quiz7
// void main() {
//   Exam exam = Exam();
//   print(exam.solution('54 km'));
//   print(exam.solution('2 cm'));
//   print(exam.solution('12 m'));
// }
//
// class Exam {
//   int solution(String a) {
//     List<String> b = a.split(' ').toList();
//     int c;
//     if (b[1] == 'km') {
//       c = 1000000;
//     } else if (b[1] == 'm') {
//       c = 1000;
//     } else {
//       c = 10;
//     }
//     return int.parse(b[0]) * c;
//   }
// }

// // quiz8
// void main() {
//   Exam exam = Exam();
//   print(exam.solution('C'));
// }
//
// class Exam {
//   int solution(String alphabet) {
//     String fullList = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
//     int result = fullList.indexOf(alphabet)+1;
//     return result;
//   }
// }


// //quiz9
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(-10));
//   print(exam.solution(15));
// }
//
// class Exam {
//   int solution(int a) {
//     int result=0;
//     if(a<0){
//       result = a*-1;
//     }else{result=a;}
//     return result;
//   }
// }


// // quiz10
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(10, 3));
//   print(exam.solution(12, 14));
// }
//
// class Exam {
//   String solution(int a, int b) {
//     int c = a~/b;
//     int d = a%b;
//     var result='$c $d';
//     return result;
//     }
//   }

