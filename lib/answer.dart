import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;

  Answer({this.answer, this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answer),
        onPressed: this.selectHandler,
      ),
    );
  }
}
