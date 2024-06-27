import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 167, 162, 168)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
              )),
        ),
      ],
    );
  }
}
