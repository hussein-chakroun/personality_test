import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'models/personality.dart';
import 'screen/start_screen.dart';
import 'screen/questions_screen.dart';
import 'screen/result_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  var activeScreen = 'start-screen';
  var currentQuestionIndex = 0;
  final personalityScores = {
    Personality.thinker: 0,
    Personality.feeler: 0,
    Personality.planner: 0,
    Personality.adventurer: 0,
  };

  void startTest() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(int answerIndex) {
    final selectedPersonality =
        questions[currentQuestionIndex].answers[answerIndex].personality;

    setState(() {
      personalityScores[selectedPersonality] =
          personalityScores[selectedPersonality]! + 1;

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        activeScreen = 'result-screen';
      }
    });
  }

  void restartTest() {
    setState(() {
      activeScreen = 'start-screen';
      currentQuestionIndex = 0;
      personalityScores.updateAll((key, value) => 0);
    });
  }

  Personality getResultPersonality() {
    return personalityScores.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(onStartTest: startTest);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        question: questions[currentQuestionIndex],
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        resultPersonality: getResultPersonality(),
        onRestart: restartTest,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
