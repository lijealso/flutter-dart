class Question {
  // properties
  String? questionText;
  bool? questionAnswer;

  // constructor
  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}