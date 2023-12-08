import 'package:flutter/material.dart';

class SoccerCell extends StatefulWidget {
  final String text;
  const SoccerCell({super.key, required this.text});

  @override
  _SoccerCellState createState() => _SoccerCellState();
}

class _SoccerCellState extends State<SoccerCell> {
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
          widget.text,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  bool xTurn = true;

  void _onTilePressed(int row, int col, board) {
    if (board[row][col] == '') {
      setState(() {
        board[row][col] = xTurn ? 'X' : 'O';
        xTurn = !xTurn;
      });
    }
  }
}
