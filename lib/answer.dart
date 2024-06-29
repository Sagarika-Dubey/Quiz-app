import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SizedBox(
          width: 22,
          child: ElevatedButton(
            child: Text(answerText,
                style: GoogleFonts.lora(
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            onPressed: selectHandler,
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(45, 37)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          )),
    );
  }
}
