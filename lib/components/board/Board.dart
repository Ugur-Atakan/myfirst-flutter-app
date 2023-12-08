import 'package:flutter/material.dart';
import 'package:myapp/components/cells/LogoCell.dart';
import 'package:myapp/components/cells/TeamCell.dart';
import 'package:myapp/components/cells/SoccerCell.dart';

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({super.key});

  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoCell(),
                  TeamCell('Team 1'),
                  TeamCell('Team 2'),
                  TeamCell('Team 3'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCell('Team 4'),
                  const SoccerCell(text: 'Team1-4'),
                  const SoccerCell(text: 'Team2-4'),
                  const SoccerCell(text: 'Team3-4'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCell('Team 5'),
                  const SoccerCell(text: 'Team1-5'),
                  const SoccerCell(text: 'Team2-5'),
                  const SoccerCell(text: 'Team3-5'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCell('Team 6'),
                  const SoccerCell(text: 'Team1-6'),
                  const SoccerCell(text: 'Team2-6'),
                  const SoccerCell(text: 'Team3-6'),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
