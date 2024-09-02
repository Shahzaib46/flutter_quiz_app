import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/Data/questions.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  final currentQuestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // double.infinity is built in value which takes complete width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,
             style: const TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.answers.map((option){
              return AnswerButton(text: option, onTap: (){});
            })
          ],
        ),
      ),
    );
  }
}