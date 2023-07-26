import 'package:flutter/material.dart';

import '../res/styles.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueGrey,
      child: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.arrow_back, color: red),
          ],
        ),
      )),
    );
  }
}
