import 'dart:math';

import 'package:flutter/material.dart';

import '../../res/styles.dart';

enum Win { win, lost, draw }

class SmallH2H extends StatelessWidget {
  SmallH2H({super.key});

  @override
  Widget build(BuildContext context) {
    Win result = Win.values[Random().nextInt(3)];
    return Container(
      width: 110,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: result == Win.win
            ? green
            : result == Win.draw
                ? yellow
                : red1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 8,
          ),
          SizedBox(width: 7),
          Text(
            '${(2 + Random().nextInt(4)).toString()} : ${(1 + Random().nextInt(4)).toString()}',
            style: s12w500Black,
          ),
          SizedBox(width: 7),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 8,
          ),
        ],
      ),
    );
  }
}
