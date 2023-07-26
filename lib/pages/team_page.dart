import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../repo/sofa-api/api.dart';
import '../res/styles.dart';
import '../widgets/settings/settings_contaner.dart';
import '../widgets/team/team_contaner.dart';

class TeamPage extends StatefulWidget {
  TeamPage({super.key, required this.trId});
  int trId;
  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  Teams teams = Teams(teamsMap: {});

  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTeams(trId: widget.trId);
      setState(() {
        teams = tmp;
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(teams.teamsMap.length);
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Team'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...teams.teamsMap.values
                  .map((e) => TeamContainer(
                        id: e.id,
                        name: e.name,
                      ))
                  .toList(),
              //TeamContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
