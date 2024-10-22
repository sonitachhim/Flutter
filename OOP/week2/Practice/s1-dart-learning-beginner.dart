//  Class Tree
// class Tree {
//   String type;
//   double height;

//   Tree(this.type, this.height);
// }

//  Class House
// class House {
//   String address;
//   List<Tree> trees = [];  // by default empty

//   House(this.address);

//   void addTree(Tree newTree){
//     this.trees.add(newTree);
//   }
// }

class Roof {
  String type;
  String amount;
  Roof(this.type, this.amount);
}

class Window {
  String color;
  int amount;
  Window(this.color, this.amount);
}

class Chimey {
  String status;
  Chimey(this.status);
}

class Door {
  String placement;
  Door(this.placement);
}

class House {
  String address;
  // List<Roof> roofs = [];
  // List<Window> windows = [];
  // List<Door> doors = [];
  // List<Chimey> chimeys = [];
  House(this.address);
}
