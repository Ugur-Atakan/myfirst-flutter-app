import 'package:flutter/material.dart';

class LogoCell extends StatelessWidget {
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
          'Logo',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
