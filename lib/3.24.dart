// // 합계/평균 계산기
// void main() {
//   List<num> scores = [100, 50, 70, 90];
//   num sum = 0;
//   num avg;
//
//   for (int i = 0; i < 10; i++) {
//     sum = sum + scores[i];
//     avg = sum / scores.length;
//   }
//   print("$sum, $avg");
// }

// // 합계/평균 계산기 개선
// void main() {
//   List<num> scores = [100, 50, 70, 90];
//
//   int sum = total(scores);
//   double average = avg(scores);
//
//   print("$sum, $avg");
// }
//
// int total(List<num> scores) {
//   int summary = 0;
//   for (int i = 0; i < 10; i++) {
//     summary = summary + scores[i];
//   }
//   return summary;
// }
//
// double avg(List<num> scores) {
//   return total(scores) / scores.length;
// }

// add 기능 설명
void main() {
  List<num> scores = [100, 50, 70, 90];
  scores.add(30);
  scores.remove(30);
  scores.removeAt(0); // 0번째를 삭제
  scores.insert(0, 40); // 0번째에 element를 삽입
  scores.clear();
  scores.addAll([10, 20, 30]); //다중 삽입
  scores[2]=80;       // 2번째에 80 대입
  print(scores);
}
