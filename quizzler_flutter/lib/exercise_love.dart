import 'dart:math';

// This is a simple Love Calculator
void main() {
  // print(loveCalculator());
}

String loveCalculator() {
  int loveScore = Random().nextInt(100) + 1;

  // print(loveScore);

  if (loveScore > 70) {
    return 'You love each other like Kanye loves Kanye';
  } else if (loveScore >= 50) {
    return 'You like each other';
  } else {
    return 'You don\'t like each other';
  }
}
