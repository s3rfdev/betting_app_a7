import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/tournamets.dart';
import '../../pages/team_page.dart';
import '../../res/styles.dart';

class LeaguesContaner extends StatelessWidget {
  LeaguesContaner({super.key, required Tournaments this.tr});
  Tournaments tr;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 40),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...tr.tournamentMap.values
              .map((e) => InkWell(
                    onTap: () => Get.to(TeamPage(trId: e.id)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e.name, style: h17w700),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
