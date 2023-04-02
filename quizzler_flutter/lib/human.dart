void main() {
  Human jenny = Human(startingHeight: 15);
  print(jenny.height);
  jenny.height = 20;
  print(jenny.height);

  Human james = Human(startingHeight: 20);
  print(james.height);

  james.talk(whatToSay: 'Why is the sky blue?');


}

class Human {
  // properties
  double height = 15;
  int age = 0;

  // constructor
  Human({required double startingHeight}) {
    height = startingHeight;
  }

  // method
  void talk({required String whatToSay}) {
    print(whatToSay);
  }
}
