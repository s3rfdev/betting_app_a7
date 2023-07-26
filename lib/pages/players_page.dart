import 'package:flutter/material.dart';

import '../models/players.dart';
import '../repo/sofa-api/api.dart';
import '../res/styles.dart';
import '../widgets/players/players_table.dart';
import '../widgets/settings/settings_contaner.dart';

class PlayersPage extends StatefulWidget {
  PlayersPage({super.key, required this.teamId});
  int teamId;

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  Players players = Players(playersMap: {});

  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getPlayers(teamId: widget.teamId);
      setState(() {
        players = tmp;
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(players.playersMap.values.length);
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Players'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              PlayersTable(players: players),
            ],
          ),
        ),
      ),
    );
  }
}
