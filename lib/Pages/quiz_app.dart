import 'package:firstapp/Model/data_base.dart';
import 'package:firstapp/Model/question.dart';
import 'package:firstapp/Model/question_bank.dart';
import 'package:flutter/material.dart';

class Quizapp extends StatefulWidget {
  const Quizapp({super.key});

  @override
  State<Quizapp> createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> {
  Question myQes = qbank.getMyQuestion();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 180, 189, 204),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(myQes.getquestionText(),
                      style: const TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (QuestionBank.idx < 5) {
                              if (myQes.getans() == true) {
                                score += 5;
                              }
                              QuestionBank.idx++;
                            } else {
                              QuestionBank.idx = 0;
                              Navigator.pushNamed(context, "EndQuizPage");
                            }
                            myQes = QuestionBank().getMyQuestion();
                          });
                        },
                        child: const Text(
                          "True",
                          style: TextStyle(color: Colors.black),
                        )),
                  )),
              Column(
                children: [const Text("Score"), Text("$score")],
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (QuestionBank.idx < 5) {
                              if (myQes.getans() == false) {
                                score += 5;
                              }
                              QuestionBank.idx++;
                            } else {
                              QuestionBank.idx = 1;
                              Navigator.pushNamed(context, "EndQuizPage");
                            }

                            myQes = QuestionBank().getMyQuestion();
                          });
                        },
                        child: const Text(
                          "False",
                          style: TextStyle(color: Colors.black),
                        )),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
