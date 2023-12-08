import 'package:flutter/material.dart';
import 'package:myapp/components/cells/LogoCell.dart';
import 'package:myapp/components/cells/TeamCell.dart';
import 'package:myapp/components/cells/SoccerCell.dart';

class TicTacToeBoard extends StatelessWidget {
  const TicTacToeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
            int row = index ~/ 4;
            int col = index % 4;

            if (row == 0 && col == 0) {
              return LogoCell();
            } else if (row == 0) {
              return TeamCell('Team $col');
            } else if (col == 0) {
              return TeamCell('Team $row');
            } else {
              return SoccerCell(text: 'Player $row-$col');
            }
          },
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Yeniden Başla'),
        ),
      ],
    );
  }
}
