import 'package:betting1/pages/match_page.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/home/home_category_contaner.dart';
import '../widgets/top_panel.dart';
import 'factor_page.dart';
import 'favorites_page.dart';
import 'h2h_page.dart';
import 'leagues_page.dart';
import 'settings_page.dart';
import 'victories_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: blueGrey,
          title: Text('MENU', style: h1MenuRed),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          color: blue,
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Get.to(SettingsPage()),
                  child: HomeCategoryContaner(title: 'SETTINGS'),
                ),
                InkWell(
                  onTap: () => Get.to(FactorPage()),
                  child: HomeCategoryContaner(title: 'Factor'),
                ),
                InkWell(
                  onTap: () => Get.to(FavoritesPage()),
                  child: HomeCategoryContaner(title: 'Favorites'),
                ),
                InkWell(
                  onTap: () => Get.to(H2HPage()),
                  child: HomeCategoryContaner(title: 'H2H'),
                ),
                InkWell(
                  onTap: () => Get.to(MatchPage()),
                  child: HomeCategoryContaner(title: 'Matches'),
                ),
                InkWell(
                  onTap: () => Get.to(LeaguesPage()),
                  child: HomeCategoryContaner(title: 'League'),
                ),
                InkWell(
                  onTap: () => Get.to(VictoriesPage()),
                  child: HomeCategoryContaner(title: 'Victories'),
                ),
              ],
            ),
          ),
        ));
  }
}
