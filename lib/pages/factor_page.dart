import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/factor/factor_container.dart';
import '../widgets/settings/settings_contaner.dart';

class FactorPage extends StatelessWidget {
  const FactorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Factor'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: FactorContaner(),
        ),
      ),
    );
  }
}
