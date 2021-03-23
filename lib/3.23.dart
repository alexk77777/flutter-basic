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

//========================================================================

void main() {
  print('주사위 : ${dice()}');
}


int dice () {
  Random random = new Random();
  return random.nextInt(6)+1;
}