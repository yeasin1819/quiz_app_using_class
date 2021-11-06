import 'package:flutter/material.dart';

import './question.dart';
import './answerOption.dart';

int main() {
  runApp(HomePage());

  return 0;
}

class Question {
  String title, correctAnswer;
  List<String> option;
  int mark;
  Question(this.title, this.option, this.correctAnswer, this.mark);
}

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int questionIdx = 0;
  int totalMark = 0;
  List<Question> questionList = [
    Question("1. What's Your Name", ['Yeasin', 'Arafat', 'Anis', 'Zarin'],
        'Zarin', 1),
    Question("2. What's Your Name", ['Yeasin', 'Arafat', 'Anis', 'Zarin'],
        'Zarin', 1),
    Question("3. What's Your Name", ['Yeasin', 'Arafat', 'Anis', 'Zarin'],
        'Zarin', 1),
    Question("4. What's Your Name", ['Yeasin', 'Arafat', 'Anis', 'Zarin'],
        'Zarin', 1),
    Question("5. What's Your Name", ['Yeasin', 'Arafat', 'Anis', 'Zarin'],
        'arin', 1),
  ];
  void changeQuestion(int n) {
    setState(() {
      questionIdx += n;
    });
  }

  void markCalc(int mark) {
    setState(() {
      totalMark += mark;
    });
  }

  Widget build(BuildContext context) {
   // print(questionIdx);
    //print(totalMark);
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Apps"),
          centerTitle: true,
        ),
        body: questionIdx < questionList.length
            ? Column(children: [
                QuestionPrint(questionList[questionIdx].title),
                ...questionList[questionIdx].option.map((optionText) {
                  return AnswerOption(
                      optionText,
                      questionList[questionIdx].correctAnswer,
                      questionList[questionIdx].mark,
                      markCalc,
                      changeQuestion);
                }),
              ])
            : Center(
                child: Text(
                    "Your Have Completed this quiz, Your Obtained Mark: $totalMark"),
              ),
      ),
    );
  }
}
