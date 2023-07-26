import 'package:flutter/material.dart';

import '../models/tournamets.dart';
import '../repo/sofa-api/api.dart';
import '../res/styles.dart';
import '../widgets/league/leagues_contaner.dart';

class LeaguesPage extends StatefulWidget {
  const LeaguesPage({super.key});

  @override
  State<LeaguesPage> createState() => _LeaguesPageState();
}

class _LeaguesPageState extends State<LeaguesPage> {
  Tournaments tr = Tournaments(tournamentMap: {});
  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTournaments();
      setState(() {
        tr = tmp;
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('League'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: LeaguesContaner(tr: tr),
        ),
      ),
    );
  }
}
