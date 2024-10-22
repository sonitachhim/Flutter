// void main() {
//   // List of student scores
//   List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];
//   List<int> pass = [];
//   int students = 0;
//   // Your code
//   for (int score in scores) {
//     if (score >= 50) {
//       students++;
//       pass.add(score);
//     }
//   }
//   print(pass);
//   print('$students students has passed');
// }

void main() {
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];
  var pass = scores.where((score) => score >= 50);
  int studentPass = pass.toList().length;
  print(pass.toList());
  print('$studentPass of students have passed');
}
