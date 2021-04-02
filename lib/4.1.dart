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
//
// // 내 연습
// void main() {
//   List<String> inputNumberList = [];
//   for (int i = 0; i < 5; i++) {
//     inputNumberList.add(stdin.readLineSync());
//   }
//   Exam exam = Exam();
//   for (int num in exam.solution(inputNumberList)) {
//     print(num);
//   }
// }
//
// class Exam {
//   List<int> solution(List<String> x) {
//     List<int> result = [];
//     int max = 0;
//     int min = 99;
//     for (int i = 0; i < 5; i++) {
//       if (int.parse(x[i]) >= max) {
//         max = int.parse(x[i]);
//       }
//       if (int.parse(x[i]) <= min) {
//         min = int.parse(x[i]);
//       }
//     }
//     result.add(max);
//     result.add(min);
//     return result;
//   }
// }

// // quiz 1-1(선생님 해답)
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

// //quiz 4
// void main() {
//   List<String> inputWords = stdin.readLineSync().split(' ');
//   Exam exam = Exam();
//   print(exam.solution(inputWords));
//   // print('${inputWords[0][0]}.${inputWords[1][0]}');
// }
//
// class Exam {
//   String solution(List<String> x) {
//     int N = x.length;
//     var result = '';
//     for (int i = 0; i < N; i++) {
//       result += x[i][0] + '.';
//       // result += x[i][0];
//       // if (i < N - 1) {
//       //   result += '.';
//       // }
//     }
//     return result.substring(0, result.length - 1);
//     // return result;
//   }
// }

// //quiz 5
// void main() {
//   List<String> inputNumberList = [];
//   for (int i = 0; i < 5; i++) {
//     inputNumberList += stdin.readLineSync().split(' ');
//   }
//   Exam exam = Exam();
//
//   for (int num in exam.solution(inputNumberList)){
//     print(num);
//   }
// }
//
// class Exam {
//   List<int> solution(List<String> x) {
//     List<int> resultList = [];
//     for (int i = 0; i < 4; i++) {
//       int result = int.parse(x[i + 1]) - int.parse(x[i]);
//       resultList.add(result);
//     }
//     return resultList;
//   }
// }

// import 'dart:io';
// void main() {
//   // 1 5 15 27 28
//   List<String> inputNumberList = [];
//   for (int i = 0; i < 5; i++) {
//     inputNumberList.add(stdin.readLineSync());
//   }
//   Exam exam = Exam();
//   List<int> answers = exam.solution(inputNumberList);
//   for (int answer in answers) {
//     print(answer);
//   }
// }
// class Exam {
//   List<int> solution(List<String> x) {
//     List<int> resultList = [];
//     for (int i = 0; i < 4; i++) {
//       int result = int.parse(x[i + 1]) - int.parse(x[i]);
//       resultList.add(result);
//     }
//     return resultList;
//   }
// }

//
// 정리 요약
// void main() {
//   // 입력이 한 줄로 들어올 때
//   // 1 2 3 4 5
//   List<String> oneLine = stdin.readLineSync().split(' ');
//   // 1 2 3 4 5
//   List<int> oneLine2 = stdin.readLineSync().split(' ').map((e) => int.parse(e));
//   // 여러줄로 입력할 때
//   /// 1
//   /// 2
//   /// 3
//   /// 4
//   /// 5
//   List<String> inputs = [];
//   for (int i = 0; i < 5; i++) {
//     inputs.add(stdin.readLineSync());
//   }
//   // 출력
//   /// 1
//   /// 2
//   /// 3
//   /// 4
//   /// 5
//   for (var input in inputs) {
//     print(input);
//   }
//   // 1 2 3 4 5
//   String result = '';
//   for (var input in inputs) {
//     result += '$input ';
//   }
//   print(result);
// }

//
// // quiz 6
// void main() {
//   Com com = Com();
//   print(com.set(1, 10));
//   print(com.set(2, 20));
//   print(com.add(40));
// }
//
// class Com {
//   int var1 = 0;
//   int var2 = 0;
//
//   List<int> set(int x, int y) {
//     if (x == 1) {
//       var1 = y;
//     } else {
//       var2 = y;
//     }
//     return [var1, var2];
//   }
//
//   List<int> add(int x) {
//     var2 = var1 + x;
//     return [var1, var2];
//   }
//
//   List<int> sub(int x) {
//     var2 = var1 - x;
//     return [var1, var2];
//   }
// }
