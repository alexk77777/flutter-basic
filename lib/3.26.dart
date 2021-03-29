import 'package:flutter_app_20210317/character/cleric.dart';
import 'package:flutter_app_20210317/character/hero.dart';
import 'package:flutter_app_20210317/equipment/sword.dart';

void main() {
  //생성자를 통한 초기화
  //홍길동 영웅생성
  Hero hero = Hero();
  // 불의검을 생성
  // Sword sword = Sword('불의검', 100, 500, '불을 내뿜는다');


  // _생성자를 사용한 후 더이상 이름 hp 설정을 할 수 없다. 버그를 줄이기 위해서 하는 것임.
  // 그런데

  // //영웅에게 칼 주기
  // hero.sword = sword;
  // hero.attack();
}
  //hp 프로퍼티(property)
  // print(hero.hp);

  Cleric cleric = Cleric();


  //참조
// }
class Hero {
  // 읽기 쓰기 가능
  String name;
  int hp;
}
// class Hero {
//   // 읽기 쓰기 불가능
//   String _name;
//   int _hp;
// }
// class Hero {
//   // 읽기 쓰기 불가능
//   String _name;
//   int _hp;
//   // hp를 통해서 _hp를 읽기만 가능
//   int get hp => _hp;
// }
