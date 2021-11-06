import 'package:flutter/material.dart';

class QuestionPrint extends StatelessWidget {
  final String questionTitle;

  QuestionPrint(this.questionTitle);
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionTitle),
    );
  }
}
