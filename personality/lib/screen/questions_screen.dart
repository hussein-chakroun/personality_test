import 'package:flutter/material.dart';
import '../models/questions.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(int) onSelectAnswer;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onSelectAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...List.generate(
            question.answers.length,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () => onSelectAnswer(index),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                ),
                child: Text(
                  question.answers[index].text,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
