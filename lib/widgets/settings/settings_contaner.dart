import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../res/styles.dart';

class SettingsContaner extends StatefulWidget {
  const SettingsContaner({super.key});

  @override
  State<SettingsContaner> createState() => _SettingsContanerState();
}

class _SettingsContanerState extends State<SettingsContaner> {
  bool sound = true;
  bool lang = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      decoration: BoxDecoration(
        color: blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Sound'.toUpperCase(),
            style: h20Grey1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'OFF',
                style: h16Grey1,
              ),
              FlutterSwitch(
                width: 150.0,
                height: 40.0,
                activeColor: red,
                inactiveColor: red,
                toggleColor: grey1,
                valueFontSize: 45.0,
                toggleSize: 45.0,
                value: sound,
                borderRadius: 40.0,
                padding: 2.0,
                showOnOff: false,
                onToggle: (val) {
                  setState(() {
                    sound = val;
                  });
                },
              ),
              Text(
                'ON',
                style: h16Grey1,
              )
            ],
          ),
          SizedBox(height: 40),
          Text(
            'Language'.toUpperCase(),
            style: h20Grey1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'BR',
                style: h16Grey1,
              ),
              FlutterSwitch(
                width: 150.0,
                height: 40.0,
                activeColor: red,
                inactiveColor: red,
                toggleColor: grey1,
                valueFontSize: 45.0,
                toggleSize: 45.0,
                value: lang,
                borderRadius: 40.0,
                padding: 2.0,
                showOnOff: false,
                onToggle: (val) {
                  setState(() {
                    lang = val;
                  });
                },
              ),
              Text(
                'EN',
                style: h16Grey1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
