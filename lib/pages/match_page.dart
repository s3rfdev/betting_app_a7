import 'package:betting1/widgets/match/match_contaner.dart';
import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/favorites/favorites_contaner.dart';
import '../widgets/match/match_up_in.dart';
import '../widgets/settings/settings_contaner.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  bool isUp = true;
  @override
  Widget build(BuildContext context) {
    change(val) {
      setState(() {
        isUp = val;
      });
    }

    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Match'.toUpperCase(), style: h1MenuRed),
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
              MatchUpIn(isUp: isUp, change: change),
              SizedBox(height: 20),
              MatchContainer(id: 0, isUp: true),
              MatchContainer(id: 1, isUp: true),
            ],
          ),
        ),
      ),
    );
  }
}
