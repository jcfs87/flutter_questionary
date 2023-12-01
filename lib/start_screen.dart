import 'package:adv_basic/questions_screen.dart';
import 'package:adv_basic/quiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(183, 245, 246, 245),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Learn flutter the fun way!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(150, 255, 255, 255),
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              key: const Key('tapStartQuiz'),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            )
          ],
        ),
    );
  }
}
