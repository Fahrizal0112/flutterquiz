import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              backgroundColor: const Color.fromARGB(255, 43, 6, 137),
              foregroundColor: Colors.white,
            ),
            child: Text(answer,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.white),),
          );
  }
}