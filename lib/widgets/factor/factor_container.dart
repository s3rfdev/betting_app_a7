import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';
import '../../res/styles.dart';
import 'factor_item.dart';

class FactorContaner extends StatelessWidget {
  const FactorContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          color: blue,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              FactorItem(
                  id: 1,
                  name: 'SPORTS BEING',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
              FactorItem(
                  id: 2,
                  name: 'MATCHLIVE',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
              FactorItem(
                  id: 3,
                  name: 'SPORTSBEWING',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
              FactorItem(
                  id: 6,
                  name: 'BEYYBEI',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
              FactorItem(
                  id: 5,
                  name: 'SPARTAS BEI',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
              FactorItem(
                  id: 4,
                  name: 'TCBEI',
                  id1: 123,
                  id2: 234,
                  img1: factorList.list[0].img1,
                  img2: factorList.list[0].img2,
                  team1: factorList.list[0].name1,
                  team2: factorList.list[0].name2),
              SizedBox(height: 20),
            ],
          )),
    );
  }
}
