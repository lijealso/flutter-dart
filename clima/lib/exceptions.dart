void main() {
  String myString = 'abc';

  try {
    double myStringAsDouble = double.parse(myString);
    print(myStringAsDouble);
  } catch (Error) {
    print(Error);
  }
}
