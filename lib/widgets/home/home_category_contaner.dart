import 'package:flutter/material.dart';
import '../../res/styles.dart';

class HomeCategoryContaner extends StatelessWidget {
  HomeCategoryContaner({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title.toUpperCase(),
        style: h120White,
      ),
    );
  }
}
