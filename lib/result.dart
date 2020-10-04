import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  Result({this.resultScore});

  String get resultPhrase {
    String resultText;

    if (resultScore == 0) {
      resultText = "Ooops, that's quite bad.";
    } else if (resultScore < 9) {
      resultText = "Could be worse!";
    } else if (resultScore < 15) {
      resultText = "Awesome job!";
    } else {
      resultText = "Nailed it.";
    }
    return resultText += " You scored ${this.resultScore.toString()}";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase),
    );
  }
}
