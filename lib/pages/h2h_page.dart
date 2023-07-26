import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/favorites/favorites_contaner.dart';
import '../widgets/h2h/h2h_container.dart';
import '../widgets/h2h/smal_h2h.dart';
import '../widgets/settings/settings_contaner.dart';

class H2HPage extends StatelessWidget {
  const H2HPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('H2H'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              FavoritesContaner(id: 0),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SmallH2H(), SizedBox(width: 15), SmallH2H()],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SmallH2H(), SizedBox(width: 15), SmallH2H()],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SmallH2H(), SizedBox(width: 15), SmallH2H()],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SmallH2H(), SizedBox(width: 15), SmallH2H()],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SmallH2H(), SizedBox(width: 15), SmallH2H()],
              ),
              SizedBox(height: 30),
              H2HContaner(),
            ],
          ),
        ),
      ),
    );
  }
}
