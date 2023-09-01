import 'package:firstapp/Model/question.dart';

class QuestionBank {
  static int idx = 0;

  final List<Question> myQuestionBank = [
    Question(questionScore: 5, questionText: "are you good?", ans: true),
    Question(questionScore: 5, questionText: "is flutter Easy", ans: false),
    Question(questionScore: 5, questionText: "is JavaScript Easy", ans: false),
    Question(questionScore: 5, questionText: "are you not good ?", ans: true),
    Question(questionScore: 5, questionText: "are you Okay ?", ans: true),
    Question(questionScore: 5, questionText: "is dart Easy", ans: false),
  ];

  Question getMyQuestion() {
    return myQuestionBank[idx];
  }
}
