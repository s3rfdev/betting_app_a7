import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class FactorItem extends StatelessWidget {
  FactorItem({
    super.key,
    required this.id,
    required this.team1,
    required this.team2,
    required this.id1,
    required this.id2,
    required this.name,
    required this.img1,
    required this.img2,
  });
  int id;
  String team1;
  String team2;
  int id1;
  int id2;
  String name;
  String img1;
  String img2;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10),
        Image.asset('assets/f$id.png'),
        SizedBox(width: 10),
        Text(
          name,
          style: h17w400,
        ),
        Expanded(child: SizedBox(width: 20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  child: ClipRRect(
                      child: Image.network(
                    img1,
                  )),
                ),
                SizedBox(width: 5),
                Text(
                  team1,
                  style: h14w500,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  child: ClipRRect(
                      child: Image.network(
                    img2,
                  )),
                ),
                SizedBox(width: 5),
                Text(
                  team2,
                  style: h14w500,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 20,
                  color: grey2,
                  alignment: Alignment.center,
                  child:
                      Text('1.${Random().nextInt(90)}', style: s12w700Yellow),
                ),
                SizedBox(width: 5),
                Container(
                  width: 40,
                  height: 20,
                  color: grey2,
                  alignment: Alignment.center,
                  child:
                      Text('2.${Random().nextInt(90)}', style: s12w700Yellow),
                ),
                SizedBox(width: 5),
                Container(
                  width: 40,
                  height: 20,
                  color: grey2,
                  alignment: Alignment.center,
                  child:
                      Text('1.${Random().nextInt(90)}', style: s12w700Yellow),
                ),
              ],
            ),
          ],
        ),
        Expanded(child: SizedBox(width: 20)),
      ],
    );
  }
}
