import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz1/answer_button.dart';
import 'package:quiz1/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key ,required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currrentquestionindex = 0;
  
  void changequestion (String selectedanswer) {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      currrentquestionindex++;
    });
  }
  

  @override
  Widget build(context) {
    final currrentquestion = questions[currrentquestionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              currrentquestion.text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            )),
            const SizedBox(
              height: 30,
            ),
            ...currrentquestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(answer: answer, onTap: (){
                  changequestion(answer);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
