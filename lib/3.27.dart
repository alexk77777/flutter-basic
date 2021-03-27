class Person {
  String name;
  int _age;

  void addOneYear() {
    _age++;
  }
}

void main() {
  var person = new Person();
  person._age = 10;
  person.addOneYear();

  print(person._age);
}