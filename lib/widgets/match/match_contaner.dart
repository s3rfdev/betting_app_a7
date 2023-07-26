import 'dart:math';

import 'package:betting1/models/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../res/styles.dart';

class MatchContainer extends StatelessWidget {
  MatchContainer({super.key, required this.id, required this.isUp});
  int id;
  bool isUp;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      child: Text(
                        factorList.list[isUp ? id : id + 1].name1,
                        style: h14w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 24,
                      height: 24,
                      child: ClipRRect(
                          child: Image.network(
                        factorList.list[isUp ? id : id + 1].img1,
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${Random().nextInt(12)}:30',
                      style: s12w400White,
                    ),
                    Text(
                      DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      style: s12w400White,
                    ),
                    Text('${Random().nextInt(5)}:${Random().nextInt(4)}',
                        style: s14w700Yellow),
                  ],
                ),
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: ClipRRect(
                          child: Image.network(
                        factorList.list[id].img2,
                      )),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 70,
                      child: Text(
                        factorList.list[id].name2,
                        style: h14w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.star,
              color: yellow,
            ),
          )
        ],
      ),
    );
  }
}
