import 'dart:io';
import 'dart:math';

// void main() {
//   Hero hero1 = Hero(); // 인스턴트 형성
//   hero1.name = "수퍼맨";
//   hero1.hp = 140;
//
//   Hero hero2 = Hero(); // 인스턴트 형성
//   hero2.name = "배트맨";
//   hero2.hp = 100;
//
//   hero1.attack();
//   print(hero1.name);
// }
//
// //Hero 타입을 새로 작성,
// class Hero {
//   //필드(field) 또는 전역변수(global variable)라 부르는 영역
//   String name;
//   int hp;
//
//   void attack() {
//     //함수
//     // hp = 150;
//     int hp = 100;  //지역변수(loca). 여기서만 씀
//     print("공격 + $hp");
//   }
// }

void main() {
  Cleric cleric1 = Cleric();
  cleric1.name = "alex";
  cleric1.hp = 15;
  cleric1.mp = 8;

  print("전투가 진행되었다!");
  print("전투 후 selfAid 스펠 주문전 HP = ${cleric1.hp}/50");
  print("전투 후 selfAid 스펠 주문전 MP = ${cleric1.mp}/10");
  cleric1.selfAid();
  print("selfAid 스펠 주문후 HP = ${cleric1.hp}/50");
  print("selfAid 스펠 주문후 MP = ${cleric1.mp}/10");
  print(
      "현재 MP는 ${cleric1.mp}/10 이기 때문에 실제회복된 MP = ${cleric1.pray(8)}\n최종 HP = HP = ${cleric1.hp}/50 \n최종 MP = ${cleric1.mp}/10");
}

class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
  }

  int pray(int time) {
    Random rnn = new Random();
    int bonus = rnn.nextInt(3);
    int recoveryMp = time + bonus;
    print('기도한 시간 = $time초');
    print('보너스 MP = $bonus');
    print('원래 회복되어야하는 MP = $recoveryMp');

    if (maxMp <= recoveryMp + mp) {
      recoveryMp = maxMp - mp;
      mp = maxMp;
    } else {
      mp = mp + recoveryMp;
    }
    return recoveryMp;
  }
}

// // 교수님 Cleric
//
// class Cleric {
//   final int maxHp = 50;
//   final int maxMp = 10;
//   String name;
//   int hp = 50;
//   int mp = 10;
//   // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
//   void selfAid() {
//     if (mp < 5) {
//       return;
//     }
//     mp = mp - 5;
//     hp = maxHp;
//   }
//   // mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
//   // 단, 최대 MP보다 더 회복하는 것은 불가능하다.
//   int pray(int second) {
//     Random rnd = Random();
//     // 회복할 MP량
//     int recoverMp = rnd.nextInt(3) + second;
//     if (maxMp < recoverMp + mp) {
//       recoverMp = maxMp - mp;
//     }
//     mp = min(mp + recoverMp, maxMp);
//     // 실제로 회복한 량??
//     return recoverMp;
//   }
// }

