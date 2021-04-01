import 'dart:io';

// //quiz 1
// void main() {
//   List<int> numList = [];
//   for (int i = 0; i < 5; i++) {
//     int num = int.parse(stdin.readLineSync());
//     numList.add(num);
//   }
//
//   Exam exam = Exam();
//   print(exam.solution(numList));
// }
//
// class Exam {
//   int solution(numList) {
//     // List<int> numList;
//     int compareMax = 0;
//     int compareMin = 0;
//     for (int i = 0; i < 5; i++) {
//       if (compareMax <= numList[i]) {
//         compareMax = numList[i];
//       } else {
//         compareMin = compareMax;
//       }
//       if (compareMin >= numList[i]) {
//         compareMin = numList[i];
//       } else {
//         compareMin = compareMin;
//       }
//     }
//     return compareMin;
//   }
// }

//quiz 1-1(선생님 해답)
// void main() {
//   List<int> inputs = [];
//   for (int i = 0; i < 5; i++) {
//     int input = int.parse(stdin.readLineSync());
//     inputs.add(input);
//   }
//   inputs.sort();
//   print(inputs[4]);
//   print(inputs[0]);
// }
//
//
// // //quiz 1-2(선생님 해답)
// void main() {
//   // 입력 1 ~ 99
//   int max = 1;
//   int min = 99;
//   for (int i = 0; i < 5; i++) {
//     int input = int.parse(stdin.readLineSync());
//     if (input > max) {
//       max = input;
//     } else if (input < min) {
//       min = input;
//     }
//   }
//   print(max);
//   print(min);
// }

//
// // //quiz 1-3(선생님 해답)
// import 'dart:math' as math;
//
// void main() {
//   // 입력 1 ~ 99
//   Exam exam = Exam();
//   for (int i = 0; i < 5; i++) {
//     int input = int.parse(stdin.readLineSync());
//     exam.numbers.add(input);
//   }
//   print(exam.max());
//   print(exam.min());
// }
// class Exam {
//   List<int> numbers = [];
//   int max() {
//     int result = 0;
//     for (int i = 0; i < numbers.length; i++) {
//       // if (result < numbers[i]) {
//       //   result = numbers[i];
//       // }
//       result = math.max(result, numbers[i]);
//     }
//     return result;
//   }
//   int min() {
//     int result = 99;
//     for (int i = 0; i < numbers.length; i++) {
//       // if (result > numbers[i]) {
//       //   result = numbers[i];
//       // }
//       result = math.min(result, numbers[i]);
//     }
//     return result;
//   }
// }

// //quiz 2
// void main() {
//   String word = stdin.readLineSync();
//   Exam exam = Exam();
//   print(exam.solution(word));
// }
//
// class Exam {
//   String x;
//
//   int solution(String x) {
//     int count = 0;
//     for (int i = 0; i < x.length; i++) {
//       if (x[i] == 'A') {
//         count += 1;
//       }
//     }
//     return count;
//   }
// }

// // //quiz 2-1(선생님 방법)
// void main() {
//   Exam exam = Exam();
//   print(exam.solution('PAIZA'));
//   print(exam.solution('PAIZA'));
// }
//
// class Exam {
//   int solution(String x) {
//     return x.length - x.replaceAll('A', '').length;
//   }
// }

// //quiz 3
// void main() {
//   int percentage = int.parse(stdin.readLineSync());
//   Exam exam = Exam(percentage);
//   print(exam.solution());
// }
//
// class Exam {
//   int a;
//   Exam(this.a);
//   String solution() {
//     String result;
//     if (a >= 0 && a <= 30) {
//       result = 'sunny';
//     } else if (a >= 31 && a <= 70) {
//       result = 'cloudy';
//     } else {
//       result = 'rainy';
//     }
//     return result;
//   }
// }

//quiz 4
void main() {
  List<String> inputWords = stdin.readLineSync().split(' ');
  Exam exam = Exam();
  print(exam.solution(inputWords));
}

class Exam {
  String solution(List<String> x) {
    int N = x.length;
    var result = '';
    for (int i = 0; i < N; i++) {
      result += x[i][0] + '.';
      // result += x[i][0];
      // if (i < N - 1) {
      //   result += '.';
      // }
    }
    return result.substring(0, result.length - 1);
    // return result;
  }
}
