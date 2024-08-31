import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.buttonLogic, {super.key});

  final void Function() buttonLogic;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(199, 255, 255, 255)),
        const Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text(
            "Lets Learn Flutter with Quizes",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            onPressed: buttonLogic,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 24),
            ))
      ],
    ));
  }
}
