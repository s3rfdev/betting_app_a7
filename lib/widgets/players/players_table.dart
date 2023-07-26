import 'package:flutter/material.dart';

import '../../models/players.dart';
import 'players_header.dart';
import 'players_row.dart';

class PlayersTable extends StatelessWidget {
  PlayersTable({super.key, required this.players});
  Players players;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.black,
      ),
      child: Column(
        children: [
          PlayersHeader(),
          ...players.playersMap.values
              .map(
                (e) => PlayersRow(
                  img: e.id.toString(),
                  name: e.name,
                  num: e.shirtNumber,
                  pos: e.position,
                  age: e.Age,
                  weight: e.height,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
