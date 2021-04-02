import 'dart:io';

//
// //Quiz 1
// void main() {
//   List<String> inputNumber = stdin.readLineSync().split(' ');
//   int N = int.parse(inputNumber[0]);
//   int M = int.parse(inputNumber[1]);
//
//   if((N % 2 == 0 && M % 2 == 0) ||(N.isOdd && M.isOdd)){
//     print('NO');
//   } else {
//     print('YES');
//   }
// }

// // Quiz 2
//
// void main() {
//   List<String> inputNumber = stdin.readLineSync().split(' ');
//   int N = int.parse(inputNumber[0]);
//   int M = int.parse(inputNumber[1]);
//
//
//   String stringResult = '';
//   for (int i = 0; i < 10; i++) {
//     int result = N + M * i;
//     stringResult+='$result ';
//   }
//   print(stringResult.trim());
//
//   // int result = N;
//   // List<int> resultList = [N];
//   // for (int i = 0; i < 9; i++) {
//   //   result += M;
//   //   resultList.add(result);
//   // }
//   // String printingresult = '';
//   // for (int resul in resultList) {
//   //   printingresult += '$resul';
//   // }
//   // print(printingresult);
//
//
// }

// //quiz 3
// void main() {
//   List<int> intputNumberList = [];
//   for (int i = 0; i < 4; i++) {
//     int inputNumber = int.parse(stdin.readLineSync());
//     intputNumberList.add(inputNumber);
//   }
//
//   for (int i = 1; i < 6; i++) {
//     if (intputNumberList.contains(i)) {
//     } else {
//       print(i);
//     }
//   }
// }
//
// //quiz 3-1(선생님 풀이)
// void main() {
//   List<int> inputs = [1, 2, 3, 4, 5];
//   for (int i = 0; i < 4; i++) {
//     inputs.remove(int.parse(stdin.readLineSync()));
//   }
//   print(inputs[0]);
// }

// //quiz 4
// void main() {
//   String inputNumber = stdin.readLineSync();
//   String result = '';
//   for (int i = 0; i < inputNumber.length; i++) {
//     if (inputNumber[0] != inputNumber[i]) {
//       result = 'No';
//       break;
//     } else {
//       result += inputNumber[i].toString();
//     }
//   }
//   print(result);
// }

// //quiz 5
// void main() {
//   List<int> position = [];
//   for (int i = 0; i < 5; i++) {
//     position.add(int.parse(stdin.readLineSync()));
//   }
//   for (int i = 0; i < 4; i++) {
//     print(position[i + 1] - position[i]);
//   }
// }

// //quiz 6
// void main() {
//   String inputString = stdin.readLineSync();
//   int N = 11 - inputString.length;
//   if (N == 0) {
//     print('ok');
//   } else {
//     print('1'*N);
//   }
// }

// //quiz 7
// void main() {
//   List<String> inputNumber = stdin.readLineSync().split(' ');
//   int a = int.parse(inputNumber[0]);
//   int b = int.parse(inputNumber[1]);
//   int c = int.parse(inputNumber[2]);
//   int d = int.parse(inputNumber[3]);
//
//   int compareNumber1 = a * 10 + b + c * 10 + d;
//   int compareNumber2 = a * 10 + b + d * 10 + c;
//   int compareNumber3 = a * 10 + c + b * 10 + d;
//   int compareNumber4 = a * 10 + c + d * 10 + b;
//   int compareNumber5 = a * 10 + d + b * 10 + c;
//   int compareNumber6 = a * 10 + d + c * 10 + b;
//   int compareNumber7 = b * 10 + a + c * 10 + d;
//   int compareNumber8 = b * 10 + a + d * 10 + c;
//   int compareNumber9 = b * 10 + c + a * 10 + d;
//   int compareNumber10 = b * 10 + c + d * 10 + a;
//   int compareNumber11 = b * 10 + d + a * 10 + c;
//   int compareNumber12 = b * 10 + d + c * 10 + a;
//
//   List<int> compareList = [];
//   compareList.add(compareNumber1);
//   compareList.add(compareNumber2);
//   compareList.add(compareNumber3);
//   compareList.add(compareNumber4);
//   compareList.add(compareNumber5);
//   compareList.add(compareNumber6);
//   compareList.add(compareNumber7);
//   compareList.add(compareNumber8);
//   compareList.add(compareNumber9);
//   compareList.add(compareNumber10);
//   compareList.add(compareNumber11);
//   compareList.add(compareNumber12);
//   compareList.sort();
//   print(compareList[11]);
// }

// //quiz 8
// void main() {
//   List<String> inputLine = stdin.readLineSync().split('+');
//   Exam exam = Exam();
//   print(exam.parsing(inputLine));
// }
//
// class Exam {
//   int parsing(List<String> x) {
//     int result = 0;
//     for (int i = 0; i < x.length; i++) {
//       for (int j = 0; j < x[i].length; j++) {
//         if (x[i][j] == '<') {
//           result += 10;
//         } else {
//           result += 1;
//         }
//       }
//     }
//     return result;
//   }
// }

// // //quiz 8-1(선생님 방법)
// void main() {
//   String E = stdin.readLineSync();
//
//   int ten = E.length - E.replaceAll('<', '').length;
//   int one = E.length - E.replaceAll('/', '').length;
//
//   print(ten * 10 + one);
// }

//quiz 9
void main() {
  List<String> heightWidth = stdin.readLineSync().split(' ');
  int height = int.parse(heightWidth[0]);
  int width = int.parse(heightWidth[1]);

  List<int> whasoList = [];

  for (int i = 0; i < height; i++) {
    List<String> whaso = stdin.readLineSync().split(' ');
    for (int j = 0; j < whaso.length; j++) {
      whasoList.add(int.parse(whaso[j]));
    }
  }


  Exam exam = Exam();
  List<int> solution = exam.parsing(whasoList);
  String solution1 = '';
  for (int j = 0; j < solution.length / width; j++) {
    for (int i = 0 + j * width; i < solution.length / height + j * width; i++) {
      solution1 += '${solution[i]} ';
    }
    solution1=solution1.trim();
    solution1+= '\n';
  }
  print(solution1.trim());
}

class Exam {
  List parsing(List<int> x) {
    List<int> blackWhiteWhaso = [];

    for (int i = 0; i < x.length; i++) {
      if (x[i] <= 127) {
        blackWhiteWhaso.add(0);
      } else {
        blackWhiteWhaso.add(1);
      }
    }
    return blackWhiteWhaso;
  }
}

// // //quiz 9-1(선생님 방법)
// void main() {
//   List<String> inputLine = stdin.readLineSync().split(' ');
//
//   int H = int.parse(inputLine[0]);
//   int W = int.parse(inputLine[1]);
//
//   Image image = Image(H, W);
//
//   for (int i = 0; i < H; i++) {
//     // 한줄의 픽셀들
//     List<Pixel> inputLine = stdin.readLineSync().split(' ').map((e) => Pixel(int.parse(e))).toList();
//     Row row = Row();
//     row.pixels = inputLine;
//     // 한줄을 이미지 정보에 추가
//     // image.rows.add(row);
//     image.rows.add(row);
//   }
//   print(image.print());
// }
//
//
//
//
//
// class Image {
//   int H;
//   int W;
//   Image(this.H, this.W);
//
//   List<Row> rows = [];
//
//   String print() {
//     String result = '';
//     for (var row in rows) {
//       result += '${row.print()}\n';
//     }
//     return result;
//   }
// }
//
// class Row {
//   List<Pixel> pixels = [];
//
//   String print() {
//     String result = '';
//     for (var pixel in pixels) {
//       result += '${pixel.print()} ';
//     }
//     return result.trim();
//   }
// }
//
// class Pixel {
//   int value;
//   Pixel(this.value);
//
//   String print() {
//     if (value >= 128) {
//       return '1';
//     }
//     return '0';
//   }
// }

// // //quiz 9-2(선생님 방법)
// void main() {
//   List<String> inputLine = stdin.readLineSync().split(' ');
//
//   int H = int.parse(inputLine[0]);
//   int W = int.parse(inputLine[1]);
//
//   List<List<int>> pixels = [];
//   for (int i = 0; i < H; i++) {
//     List<int> inputLine = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
//     pixels.add(inputLine);
//   }
//
//   for (int i = 0; i < H; i++) {
//     myPrint(pixels[i]);
//   }
//
// }
//
// void myPrint(List<int> oneLine) {
//   String result = '';
//   for (int num in oneLine) {
//     if (num >= 128) {
//       num = 1;
//     } else {
//       num = 0;
//     }
//     result += '$num ';
//   }
//   print(result);
// }

// //Quiz 9 연습
// void main() {
//   List<int> inputHW =
//       stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
//
//   int height = inputHW[0];
//   int width = inputHW[1];
//
//   List<List<int>> pixelList = [];
//
//   for (int i = 0; i < height; i++) {
//     List<int> inputLine =
//         stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
//     pixelList.add(inputLine);
//   }
//   Exam exam = Exam();
//   exam.parsing(pixelList);
//   exam.printing(pixelList);
// }
//
// class Exam {
//   List<List<int>> parsing(List<List<int>> x) {
//     for (int i = 0; i < x.length; i++) {
//       for (int j = 0; j < x[i].length; j++) {
//         if (x[i][j] > 128) {
//           x[i][j] = 1;
//         }
//         x[i][j] = 0;
//       }
//     }
//     return x;
//   }
//
//   String printing(List<List<int>> x) {
//     for (int i = 0; i < x.length; i++) {
//       var result='';
//       for (int j = 0; j < x[i].length; j++) {
//         result += '${x[i][j]} ';
//       } print(result.trim());
//     }
//   }
// }

// //quiz 10
// void main() {
//   int inputnumber = int.parse(stdin.readLineSync());
//
//   List<List> ipAddressList = [];
//   for (int i = 0; i < inputnumber; i++) {
//     List<String> ipAddress = stdin.readLineSync().split('.');
//     ipAddressList.add(ipAddress);
//   }
//
//   Exam exam = Exam();
//   for (var printing in exam.solution1(ipAddressList)) {
//     print(printing);
//   }
// }
//
// class Exam {
//   List solution1(List<List> x) {
//     List<String> result = [];
//     for (int i = 0; i < x.length; i++) {
//       result.add(solution2(x[i]));
//     }
//     return result;
//   }
//
//   String solution2(List<String> y) {
//     String result = '';
//     for (int i = 0; i < y.length; i++) {
//       if (y.length != 4 || int.parse(y[i]) < 0 || int.parse(y[i]) > 256) {
//         result = 'False';
//         break;
//       } else {
//         result = 'True';
//       }
//     }
//     return result;
//   }
// }

// class Exam {
//   List judge(List<List> x) {
//     List<String> result = [];
//     List<List> result1 = [];
//
//
//
//     for (int i = 0; i < x.length; i++) {
//       for (int j = 0; j < x[i].length; j++) {
//         if (x[i].length == 4 &&
//             0 <= int.parse(x[i][j]) &&
//             int.parse(x[i][j]) < 256) {
//           result.add('true');
//         } else {
//           result.add('false');
//         }
//       }
//     }
//     result1.add(result);
//     print(result1);
//     // print(result);
//     // List<String> realResultList = [];
//     // for (int i = 0; i < x[i].length; i += 4) {
//     //   if (result[i] == 'true' &&
//     //       result[i + 1] == 'true' &&
//     //       result[i + 2] == 'true' &&
//     //       result[i + 3] == 'true') {
//     //     realResultList.add('True');
//     //   } else {
//     //     realResultList.add('False');
//     //   }
//     //   return realResultList;
//     // }
//   }
// }

// 4
// 192.400.1.10.1000...
// 4.3.2.1
// 0..33.444...
// 1.2.3.4
