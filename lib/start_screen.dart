import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 100)),
          Image.asset(
            'images/assets/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Learn Flutter The Fun Way!",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(Icons.arrow_left_outlined),
              label: const Text("Start Quiz"),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero
                ),
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
