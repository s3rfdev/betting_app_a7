import 'package:flutter/material.dart';

import '../../res/styles.dart';

class PlayersHeader extends StatelessWidget {
  const PlayersHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          padding: EdgeInsets.all(10),
          child: Text('Player', style: s12w400White),
          alignment: Alignment.center,
        ),
        Container(
          width: 80,
          padding: EdgeInsets.all(10),
          child: Text('Name', style: s12w400White),
          alignment: Alignment.centerLeft,
        ),
        Container(
          width: 60,
          padding: EdgeInsets.all(10),
          child: Text('Shirt #', style: s12w400White),
          alignment: Alignment.centerLeft,
        ),
        Container(
          width: 60,
          padding: EdgeInsets.all(10),
          child: FittedBox(
            child: Text(
              'Position',
              style: s12w400White,
              maxLines: 1,
            ),
          ),
          alignment: Alignment.centerLeft,
        ),
        Container(
          width: 60,
          padding: EdgeInsets.all(10),
          child: FittedBox(
            child: Text(
              'Age',
              style: s12w400White,
              maxLines: 1,
            ),
          ),
          alignment: Alignment.centerLeft,
        ),
        Container(
          width: 60,
          padding: EdgeInsets.all(10),
          child: FittedBox(
            child: Text(
              'Height',
              style: s12w400White,
              maxLines: 1,
            ),
          ),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}
