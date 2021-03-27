// //1번 케이스
// class Hero {
//   //필드(field) 또는 전역변수(global variable)라 부르는 영역
//   String name;
//   int hp;
//
//
//   //생성자(constructor), 생성자를 정의하는 순간 기본은 못쓴다.
//   Hero(this.name, this.hp){
//   //
//   }
//
//
//   void attack() {
//     //함수
//     // hp = 150;
//     int hp = 100;  //지역변수(loca). 여기서만 씀
//     print("공격 + $hp");
//   }
//   void run(){}
// }

//2번 케이스
import 'package:flutter_app_20210317/equipment/sword.dart';

class Hero {
  //공유자원
  static int money = money-10;


  // 언더바를 붙이면 바깥에서 함부러 수정 못함
  String _name;
  int _hp;
  Sword sword;


  //생성자(constructor), 생성자를 정의하는 순간 기본은 못쓴다.
  Hero(this._name, this._hp);

  //외부에서 읽기위해 제공하는 프로퍼티
  int get hp => _hp;

  void attack() {
    //함수
    // hp = 150;
    // int hp = 100; //지역변수(local). 여기서만 씀
    _hp = _hp - 5;
    print("공격 + $_hp");
  }

  void run() {}
}
