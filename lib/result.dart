import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //getters
    var resultText = " ";
    if (resultScore == 10) {
      resultText =
          'You did it!!, But you need to improve! \n Your Total Score is- 10';
    } else if (resultScore == 20) {
      resultText =
          "You did it!!, You have pretty good idea of Flutter❤️ \n Your Total Score is- 20";
    } else if (resultScore == 30) {
      resultText =
          "You did it!!, You have pretty good idea of Flutter❤️ \n Your Total Score is- 30";
    } else if (resultScore == 40) {
      resultText =
          "You did it!!, You are excellent in Flutter🔥 \n Your Total Score is- 40";
    } else if (resultScore == 50) {
      resultText =
          "You did it!!, You are awesome in Flutter 💯 \n Your Total Score is- 50";
    } else {
      resultText =
          'You failed the test! You need to work hard more😔 \n Your Total Score is- 00';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: GoogleFonts.lora(
                  textStyle:
                      TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: resetHandler,
                child: Text(
                  'Restart Quiz!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ).copyWith(fontFamily: "Lora"),
                ))
          ]),
    );
  }
}
