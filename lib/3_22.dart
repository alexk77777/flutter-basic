void main() {
//   int a = 10;
//   int b = 20;
//
//   int myAge = 15;
//   int brotherAge = 30;
//
//   // int d = 5.5;
//   double e = 10.5;
//
//   // [문자열]
//   String name = '홍길동';
//
//   // [진위]
//   bool isMarried = true;
//   isMarried = false;
//
// //  [숫자목록]
//   List<int> ageList = [10,20,30];
//   var ageList1 = [10,20,30];
//
//   // [문자열 목록]
//   List<String> nameList = ['홍길동, 한석봉'];
//   // var nameList2
//
//   // null
//   int g= 222;
//
//   String nem3 = '';
//
//
  exam2();
}

void exam1() {
  // double tax = 1.1; // 원래 짰던 코딩
  final double tax = 1.1;
  // final을 붙이면 변수가 아닌 상수가 됨. tax 값을 다시 대입하려 하면 오류남. 선언만 하고 나중에 값 대입 안된다.
  int fax = 5;
  print('5만원짜리를 4만원으로 할인합니다.');
  fax = 4;
  print('팩스의 새로운 가격은 (세금포함) ${fax * tax}만원!');

  //연습문제 1-1
  int a = 3;
  int b = 5;
  int result = a * b;
  int c = result;
  print('가로 $a, 세로 $b의 직사각형 면적은 $c');

  //연습문제 1-2
  bool zeroOrOne = true;
  double pi = 3.14;
  int pi100 = 314159265853979;
  String sentence = '항구를 공격! 적에게 15포인트의 데미지를 주었다';
}

void exam2() {
  print('asdf\n'*3);




}