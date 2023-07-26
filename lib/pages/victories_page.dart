import 'dart:math';

import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../res/styles.dart';
import '../widgets/favorites/favorites_contaner.dart';
import '../widgets/settings/settings_contaner.dart';

class VictoriesPage extends StatelessWidget {
  const VictoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue1,
      appBar: AppBar(
        leading: BackButton(color: red),
        centerTitle: true,
        backgroundColor: blueGrey,
        title: Text('Victories'.toUpperCase(), style: h1MenuRed),
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
              Container(
                width: 150,
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: red, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      child: Text(
                        factorList.list[Random().nextInt(3)].name1
                            .toUpperCase(),
                        style: s16w700Black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 30,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 26,
                        height: 26,
                        child: ClipRRect(
                            child: Image.network(
                          factorList.list[Random().nextInt(3)].img1,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              FavoritesContaner(id: 0),
              SizedBox(height: 20),
              FavoritesContaner(id: 1),
              SizedBox(height: 20),
              FavoritesContaner(id: 2),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
