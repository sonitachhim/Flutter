/*
1. Type Inference
EXPLAIN : Explain how Dart infers the type of a variable.
  Dart infers the type of a variable by looking at the value but you can also specify it on your own.

CODE : Complete the bellow code to illustrate the concepts:
// Declare a int variable and let Dart infer its type
void main() {
  var name = 'Jake';
}
// Define a variable with an explicit String type
void main() {
  String name = 'Jake';
}


2. Nullable and Non-Nullable Variables
EXPLAIN : Explain nullable vs non-nullable variables.
  Nullable don't need to contain a value while Non-nullable need to have a value.
EXPLAIN : When is it useful to have nullable variables?
  When you want to assign value later or it's optional.
CODE : Complete the bellow code to illustrate the concepts:
// Declare a nullable integer variable and assign it a null value
void main() {
  int? numA = null;
// Declare a non-nullable integer variable and assign it a value
  int age = 20;
// Assign a new value to the nullable variable
  numA = 15;
}


3. Final and const
EXPLAIN : Describe the difference between final and const.
  You can't change the value of final but can change for const.
CODE : Complete the bellow code to illustrate the concepts:

// Declare a final variable and assign it the current date and time
void main() {
  final dateTime = DateTime.now();
}
// Can you declare this variable as const? Why?
No because DateTime.now() is not a compile-time constants.
// Declare a const variable with a integer value
void main() {
  const int stock = 1000;
}
// Can you reassign the value of this final variable? Why?
No, final variable can only be assigned once.


4. Strings, Lists and Maps
CODE : Complete the bellow code to illustrate the concepts:
Strings:
// Declare two Strings: firstName and lastName and an integer:age
void main() {
  String firstname = 'Jake';
  String lastname = 'Smith';
  int age = 28;
// Concatenate the 2 Strings and the age 
  String result = firstname + lastname + age.toString();
// Print result
  print(result);
}
Lists:
// Create a list of integers
void main() {
  List<int> number = [1, 2, 3, 4];
// Add a number to the list
  number.add(5);
// Remove a number from the list
  number.remove(3);
// Insert a number at a specific index in the list
  number.insert(3, 9);
// Iterate over the list and print each number
  for (var number in number){
    print(number);
  };
}
Maps:
// Create a map with String keys and integer values
void main() {
  // Map<String, int> fruit 
  var fruits = {
    'apple' : 1,
    'banana' : 2,
    'watermelon' : 4
  };
// Add a new key-value pair to the map
  fruits['mango'] = 3;
// Remove a key-value pair from the map
  fruits.remove('banana');
// Iterate over the map and print each key-value pair
  fruits.forEach((key, value) {
    print('$key: $value');
  });
}


5. Loops and Conditions
CODE : Complete the bellow code to illustrate the concepts:
// Use a for-loop to print numbers from 1 to 5
void main() {
  for(int i = 1; i <= 5; i++) {
    print(i);
  }
}
// Use a while-loop to print numbers while a condition is true
void main() {
  int i = 1;
  while(i <=5) {
    print(i);
    i++;
  }
}
// Use an if-else statement to check if a number is even or odd ```
void main() {
  int i = 5;
  if(i % 2 == 0) {
  print("i is even");
  } else print("i is odd");
}


6. Functions
EXPLAIN : Compare positional and named function arguments
  Positional function is a function where you pass the parameter into function in a specific order.
  name function allowed to pass parameter in any order.
EXPLAIN : Explain when and how to use arrow syntax for functions
when the function return a single operation.
CODE : Complete the bellow code to illustrate the concepts:

Defining and Invoking a Function:

// Define a function that takes two integers and returns their sum
  int sum(int numA, int numB) {
  return numA + numB;
  }
// Call the function and print the result
void main() {
  int result = sum(3, 4);
  print('sum: $result');
}


// Define a function that uses positional arguments
 double getArea(double length, double width) {
  return length * width;
 }
// Define another function that uses named arguments with the required keyword (ex: getArea with rectangle arguments)
void printSum({required int a, required int b}) {
  print('The sum is: ${a + b}');
}
// Call both functions with appropriate arguments
void main() {
  double area = getArea(10, 5);
  print('The area is:$area');
  printSum(a: 12, b: 8);
}
EXPLAIN : Can positional arguement be ommited? Show an example
No, it can't.
void printName(String firstname, String lastname) {
  print('Firstname: $firstname, Lastname: $lastname');
}
void main() {
  printName('Jake', 'Smith');//correct
  printName('Jake');//incorrect
}
EXPLAIN : Can named arguement be ommited? Show an example
Yes, it can.
void printName({String? firstname, String? lastname}){
  print('FullName: ${firstname ?? 'Null'} ${lastname ?? 'Null'}'); // `??` handle null
}
void main(){
  printName(firstname: 'Chen', lastname: 'Smith'); 
  printName(firstname: 'Chen'); 
}
Arrow Syntax:
// Define a function using arrow syntax that squares a number
int sum(int a, int b) => a + b;
// Call the arrow function and print the result
void main() {
  int result = sum(2, 5);
  print('Sum: $result');
}

*/  