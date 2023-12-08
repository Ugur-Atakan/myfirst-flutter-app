import 'package:flutter/material.dart';

class TeamCell extends StatelessWidget {
  final String text;

  TeamCell(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 87,
      height: 87,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
