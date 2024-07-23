import 'package:flutter/material.dart';
import 'package:quiz1/data/question.dart';
import 'package:quiz1/question_screen.dart';
import 'package:quiz1/results_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswer = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen() {
    setState(() {
      activeScreen = QuestionScreen(onselectedanswer: chooseanswer);
    });
  }

  void restartscreen() {
    setState(() {
      selectedanswer = [];
      activeScreen = QuestionScreen(onselectedanswer: chooseanswer);
    });
  }

  void chooseanswer(String answer) {
    selectedanswer.add(answer);

    if (selectedanswer.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(chooseanswer: selectedanswer, onrestart: restartscreen);
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 146, 110, 244)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}