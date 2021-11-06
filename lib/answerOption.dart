import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
  String optionText;
  String correctAns;
  int mark;
  final void Function(int next) changeQuestion;
  final void Function(int mark) markCalc;

  AnswerOption(this.optionText, this.correctAns, this.mark, this.markCalc,
      this.changeQuestion);

  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text(optionText),
          onPressed: () {
            changeQuestion(1);
            if (optionText == correctAns) 
              markCalc(mark);
             else
              markCalc(0);
          }),
    );
  }
}
