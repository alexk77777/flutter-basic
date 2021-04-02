import 'dart:math';
import 'dart:io';

//
// void main() {
//   quiz1();
// }
//
// void quiz1() {
//   var weight = 60;
//   var age = 2;
//   var age1 = 30;
//   var age2 = 40;
//   String name = 'smart';
//   if (weight == 60) {
//     print("weight Yes");
//   }
//   if ((age1 + age2) * 2 >= 60) {
//     print("age1+age2 Yes");
//   }
//   if (age % 2 == 0) {
//     print("age odd/even Yes");
//   }
//   if (name == 'smart') {
//     print("smart Yes");
//   }
// }
//
// void quiz2() {
//   var cost;
//   var age = 30;
//   var gender;
//   if (true) {
//     print('30이 아니다');
//   } else {
//     print('30이다');
//   }
// }
//
// void quiz3() {
//   int gender = 0;
//   int age = 22;
//   stdout.write("안녕하세요\n");
//   if (gender == 0) {
//     print("나는 남자입니다. $age 살입니다");
//   } else {
//     print("나는 여자입니다.");
//   }
//   print("잘부탁합니다.");
// }
//
// void quiz4() {
//   print("[메뉴] 1:검색 2:등록 3:삭제 4:변경 >");
//   int selected = int.parse(stdin.readLineSync());
//   if (selected == 1) {
//     print("검색합니다");
//   } else if (selected == 2) {
//     print("등록합니다");
//   } else if (selected == 3) {
//     print("삭제합니다");
//   } else if (selected == 4) {
//     print("변경합니다");
//   }
// }

// //6교시==================================================
//
// void main() {
//   print('주사위 : ${dice(6)}');
// }
//
// int dice(int num) {
//   Random random = new Random();
//   return random.nextInt(num) + 1;
// }
//
// void main() {
//   int number = int.parse(stdin.readLineSync());
//   print('주사위 : ${dice(number)}');
// }
//
// int dice(number) {
//   Random random = new Random();
//   return random.nextInt(number) + 1;
// }

void main() {
  introduceOneself();
  mail('term of purchase',
      'misas@naver.com',
      'i want to purchase your product. blah blah blah');
  eMail(
      address: 'misas@naver.com',
      text: 'i want to purchase your product. blah blah blah');
  print('삼각형 면적 = ${calcTriangleArea(bottom: 5.0, height: 2.0)}');
  print('원 면적 = ${calcCircleArea(radius: 4.0)}');
}

void introduceOneself() {
  String name = 'alex';
  int age = 23;
  double height = 180.5;
  String gender = 'M';
  print(
      '안녕하세요 제 이름은 $name 입니다.\n나이는 $age이고요.\n키는 $height cm 입니다.\n성별은 $gender 입니다');
}

void mail(String title, String address, String text) {
  print('$address에 아래의 메일을 송신한다.\n제목 : $title\n본문 : $text');
}

void eMail({String title, String address, String text}) {
  if (title == null) {
    print('$address에 아래의 메일을 송신한다.\n제목 : 제목없음\n본문 : $text');
  } else {
    print('$address에 아래의 메일을 송신한다.\n제목 : $title\n본문 : $text');
  }
}

double calcTriangleArea({double bottom, double height}) {
  return bottom * height / 2;
}

double calcCircleArea({double radius}) {
  return double.parse((pi * pow(radius, 2)).toStringAsFixed(2));
}
