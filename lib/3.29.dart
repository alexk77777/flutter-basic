void main() {
  //Sort
  List<int> numbers = [3, 5, 1, 2, 6, 9, 8];
  print(numbers);

  //리턴을 안한다. void sort(). sort()는 상태를 변화시킴
  //해설에 void라고 되어 있으면 상태가 변하는 것임
  //String 클래스 관련한 메소드들은 거의가 void 가 아님.
  numbers.sort();
  print(numbers);

  //리턴을 하고 있다
  numbers.reversed;
  print(numbers);

  //반복되는 타입 -> Iterable
  // 리턴을 하고 있다 : 객체의 상태가 불변
  List<int> reversedNumbers = numbers.reversed.toList();
  print(numbers.reversed.toList());

  //잘라내기
  String str = 'abc';
  print(str == 'abc');
  print(str.substring(1, 2));
  print(str + 'hijk');
  print('${str}hijk');

  // 메소드에 리턴값이 있다면
  String str2 = '';
  print(str2.isEmpty);
  print(str2.length == 0);
  print(str2.isNotEmpty);
  print(str.contains('d'));
  print(str.toLowerCase());
  print(str.toUpperCase());

  print(str.replaceAll('a', 'A')); //Abcd
  print(str.replaceAll('ab', 'ZZ')); //ZZcd

  print(str2.startsWith('ab')); // true

  print(str2.endsWith('d')); // true
  // c가 몇번째 있을까?
  print(str2.indexOf('c')); //2
  print(str2.trim()); // 좌우 공백 제거

}
