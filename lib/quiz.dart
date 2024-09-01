import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{

// Widget? activeScreen;

// @override
//   void initState() {
//     super.initState();
//     activeScreen = StartScreen(switchScreen);
//   }
  // void switchScreen(){  
  // setState(() {
  //   activeScreen = const QuestionsScreen();
  // });
  // }

  
  var activeScreen = 'start-screen';

  void switchScreen(){  
  setState(() {
    activeScreen = 'questions-screen';
  });
  }


@override
  Widget build(context) {

    Widget screen = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screen = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 4, 7, 155),
                Color.fromARGB(255, 28, 81, 226)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          //child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen()
          child: screen,
        ),
      ),
    );
  }

}