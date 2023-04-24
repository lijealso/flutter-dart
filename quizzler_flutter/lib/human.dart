void main() {
  // Human jenny = Human(15, 3.5);
  // print(jenny.height);

  Human james = Human(20, 4.2);
  // print(james.height);

  james.talk(whatToSay: 'Why is the sky blue?');
}

class Human {
  // properties
  double height;
  double weight;
  int age = 0;

  // constructor
  Human(this.height, this.weight);

  // method
  void talk({required String whatToSay}) {
    // print(whatToSay);
  }
}
