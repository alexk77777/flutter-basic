class Sword {
  //전역변수, field, global
  String _name;
  int _damage;
  int _price;
  String _description;

  Sword(this._name, this._damage, this._price, this._description);

  int get damage => _damage;

  int get price => _price;

  String get description => _description;

  String get name => _name;

//   void attack() {
//     print('$name으로 $damage를 주었다!!!');
//     _hp = _hp - 5;
//     print('$name이 공격!!!');
//
//     //칼이 잇으면 칼을 휘두르자
//     if (sword != null) {
//       sword.attck();
//     }
//   }
// void run(){}
// }
}
