import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/Data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  var currentIndex = 0;

  void changeQuestion(){
    setState(() {
      currentIndex++;  
    });
  }

  @override
  Widget build(context) {
    
    final currentQuestion = questions[currentIndex];

    return SizedBox(
      width: double.infinity, // double.infinity is built in value which takes complete width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,
             style: GoogleFonts.mate(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((option){
              return AnswerButton(text: option, onTap: changeQuestion);
            })
          ],
        ),
      ),
    );
  }
}