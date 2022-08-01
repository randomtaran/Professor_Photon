import 'package:flutter/material.dart';
import 'package:prof_photon2/model/ques_model.dart';
class NLMQuestions extends StatefulWidget {
  const NLMQuestions({Key? key}) : super(key: key);

  @override
  State<NLMQuestions> createState() => _NLMQuestionsState();
}

class _NLMQuestionsState extends State<NLMQuestions> {

  int _questionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 50,),
            Text('Question ${_questionNumber}/${questions.length}',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w900
            ),),
            Divider(thickness: 1,color: Colors.grey, indent: 10,),
            Expanded(
              child: PageView.builder(
                itemCount: questions.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  final _question = questions[index];
                  return buildQuestion(_question);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
  Column buildQuestion(Question question){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32,),
        Text(
          question.text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16
          ),
        ),
        SizedBox(height: 32,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: question.img,
        ),
        SizedBox(height: 32,),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if(question.isLocked) {
                return ;
              }else{
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
              }
            }
          ),
        )
      ],
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption
    }) : super(key: key);

  @override
  Widget buildOption(BuildContext context, Option option){
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: color)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat'
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question){
    final isSelected = option == question.selectedOption;
    if(question.isLocked){
      if(isSelected){
        return option.isCorrect ? Colors.lightGreenAccent : Colors.redAccent;
      }else if(option.isCorrect){
        return Colors.lightGreenAccent;
      }
    }
    return Colors.grey;
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: question.options
        .map((option) => buildOption(context, option))
        .toList(),
      ),
    );

  }
}

