class Cleria{
  static final int maxHp = 50;
  static final int maxMp = 10;
  int hp;
  int mp;
  String name;

  Cleria({this.name, this.hp, this.mp});
}

void main() {
  Cleria cleria1 = new Cleria();
  Cleria cleria2 = new Cleria(name: "아서", hp: 40, mp: 5);

  // print(Cleria.maxMp);
  // print(Cleria().hp);
  // cleria1.hp=35;
  // print(cleria1.hp);
  //
  // print(Cleria().hp);
  // print(cleria2.hp);
  // cleria2.hp=35;
  // print(cleria2.hp);
}
