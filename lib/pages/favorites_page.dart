import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/favorites/favorites_contaner.dart';
import '../widgets/settings/settings_contaner.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Favorites'.toUpperCase(), style: h1MenuRed),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: blue1,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FavoritesContaner(id: 0),
              FavoritesContaner(id: 1),
            ],
          ),
        ),
      ),
    );
  }
}
