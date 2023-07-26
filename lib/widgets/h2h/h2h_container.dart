import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class H2HContaner extends StatelessWidget {
  const H2HContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(),
        height: 150,
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: blueGrey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  alignment: Alignment.centerLeft,
                  child: Text('Home', style: h14w500),
                ),
                ...List.generate(
                    7,
                    (index) => Container(
                          width: 30,
                          alignment: Alignment.center,
                          child: ResCircle(),
                        )).toList(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  alignment: Alignment.centerLeft,
                  child: Text('Away', style: h14w500),
                ),
                ...List.generate(
                    7,
                    (index) => Container(
                          width: 30,
                          alignment: Alignment.center,
                          child: ResCircle(),
                        )).toList(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  alignment: Alignment.centerLeft,
                  child: Text('Last', style: h14w500),
                ),
                ...List.generate(
                    7,
                    (index) => Container(
                          width: 30,
                          alignment: Alignment.center,
                          child: ResCircle(),
                        )).toList(),
              ],
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}

class ResCircle extends StatelessWidget {
  const ResCircle({super.key});

  @override
  Widget build(BuildContext context) {
    int i = Random().nextInt(3);
    return CircleAvatar(
      radius: 10,
      backgroundColor: i == 0
          ? green
          : i == 1
              ? red1
              : yellow,
      child: Text(
          i == 0
              ? 'W'
              : i == 1
                  ? 'L'
                  : 'D',
          style: s10w900White),
    );
  }
}
