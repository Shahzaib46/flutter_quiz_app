import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // double.infinity is built in value which takes complete width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question is here ...", style: TextStyle(
            color: Colors.white,
            fontSize: 20
          )),
          const SizedBox(height: 30),
          AnswerButton(text: "Answer 1", onTap: (){}),
          AnswerButton(text: "Answer 2", onTap: (){}),
          AnswerButton(text: "Answer 3", onTap: (){}),
          AnswerButton(text: "Answer 4", onTap: (){}),
        ],
      ),
    );
  }
}