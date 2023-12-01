import 'package:adv_basic/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:adv_basic/data/question.dart';
import 'package:adv_basic/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswer = [];
  var activeScreen = 'start';

  //we navigate with this to another screen
  void _switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswer.add(answer);
    if (_selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results';
      });
    }
  }
  void _restartQuiz() {
    setState((){
      _selectedAnswer = [];
      activeScreen = 'questions';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(_switchScreen);

    if (activeScreen == 'questions') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'results') {
      screenWidget = ResultScreen(
        chosenAnswers: _selectedAnswer,
        onRestart: _restartQuiz,
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
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
