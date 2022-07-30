import 'package:flutter/material.dart';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;
  Image? img;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
    this.img
});
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
});
}

final questions = [
  Question(
    text: '''For the arrangement shown in the figure. Find the (a) accelerationof each block (b) tension in each
string.''',
    options: [
      const Option(text: '2 m/s2 ; T1 = 16N ; T2= 10N', isCorrect: true),
      const Option(text: '4 m/s2 ; T1 = 10N ; T2= 16N', isCorrect: false),
      const Option(text: '6 m/s2 ; T1 = 16N ; T2= 16N', isCorrect: false),
      const Option(text: '-2 m/s2 ; T1 = 10N ; T2= 10N', isCorrect: false),
    ],
    img: Image.asset('assets/5kg.png')
  ),
];