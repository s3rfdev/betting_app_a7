import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/settings/settings_contaner.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('MENU', style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: SettingsContaner(),
        ),
      ),
    );
  }
}
