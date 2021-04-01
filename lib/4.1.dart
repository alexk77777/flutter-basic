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


// //quiz 1-1(선생님 해답)
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
//
// // //quiz 1-3(선생님 해답)
// import 'dart:io';
// import 'dart:math' as math;
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