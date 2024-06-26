import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //getters
    var resultText = " ";
    if (resultScore <= 8) {
      resultText = 'You did it!!, You are awesome and innocent!!';
    } else if (resultScore <= 12) {
      resultText = "You did it!!, Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You did it!!, You are.... Strange?!";
    } else {
      resultText = "You did it!!, You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: GoogleFonts.lora(
              textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ).copyWith(fontFamily: "Lora"),
            ))
      ]),
    );
  }
}
