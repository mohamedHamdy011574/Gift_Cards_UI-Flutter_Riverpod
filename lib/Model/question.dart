class Question {
  String questionText;
  bool ans;
  int questionScore;

  Question(
      {required this.questionScore,
      required this.questionText,
      required this.ans});

  String getquestionText() {
    return questionText;
  }

  bool getans() {
    return ans;
  }

  void setquestionText(String questionText) {
    this.questionText = questionText;
  }

  void setans(bool ans) {
    this.ans = ans;
  }
}
