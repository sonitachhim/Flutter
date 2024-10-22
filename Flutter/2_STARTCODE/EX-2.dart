void main() {
  // 1 - iLike
  String iLike = 'I like pizza';
  //const: never change
  // 2 - toppings
  String toppings = 'with tomatoes';
  toppings += " and cheese";
  //var: cause you modified toppings.
  // 3 - message
  String message = '$iLike $toppings';
  print(message);
  //final: can't modified the message
  // 4 - rbgColors
  List<String> rbgColors = ['red', 'blue', 'green'];
  print(rbgColors);
  //var: can add more to list.
  // 5 - weekDays
  List<String> weekDays = ['monday', 'tuesday', 'wednesday'];
  weekDays.add('thursday');
  print(weekDays);
  //var: add thrusday to list
  // 6 - scores
  List<int> scores = [45,35,50];
  scores = [45,35,50, 78];
  print(scores);
  //var: cause you add 78 to the list.
}


