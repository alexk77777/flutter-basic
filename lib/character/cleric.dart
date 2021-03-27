import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  static final int maxHp = 50;
  int mp = 10;
  static final int maxMp = 10;

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



