import 'dart:math';

void main() {
  print('주사위 : ${dice(start: 5, end: 6)}');
  print('주사위 : ${dice(end: 5)}');
}

// 정수 num 하나를 받아서 정수 1 ~ num 를 반환한다
// && 그리고, || 또는
// 매개변수를 {} 로 감싸면 선택적으로 매개변수를 선택할 수 있게 된다. (선택적 파라미터)
int dice({int start, int end}) {
  if (start != null && end == null) {
    end = 6;
  } else if (start == null && end != null) {
    start = 0;
  }
  return Random().nextInt(end - start + 1) + start;
}

// 함수의 내용이 한 줄일 경우에는 다음과 같이 줄여서 쓸 수 있다. (람다식 lambda expression)
// num : 파라미터, parameter, 매개변수
int dice2(int num) => Random().nextInt(num) + 1;

