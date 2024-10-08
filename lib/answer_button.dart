import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({required this.text, required this.onTap,super.key});
  
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color.fromARGB(255, 3, 42, 109),
        foregroundColor: Colors.white
      ),
      child: Text(text, textAlign: TextAlign.center)
      );

  }
}