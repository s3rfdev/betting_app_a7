import 'package:dio/dio.dart';

import '../../models/players.dart';
import '../../models/teams.dart';
import '../../models/tournamets.dart';

class SofaApi {
  static Future<Tournaments> getTournaments() async {
    var dio = Dio();
    var res = await dio.get(
        'https://api.sofascore1.com/api/v1/sport/football/scheduled-events/2023-07-26');
    var tmp = Tournaments.fromJson(res.data);
    return tmp;
  }

  static Future<Teams> getTeams({required int trId}) async {
    var dio = Dio();
    var res = await dio.get(
        'https://api.sofascore1.com/api/v1/sport/football/scheduled-events/2023-07-26');
    var tmp = Teams.fromJson(res.data, trId);

    return tmp;
  }

  static Future<Players> getPlayers({required int teamId}) async {
    var dio = Dio();
    var res =
        await dio.get('https://api.sofascore1.com/api/v1/team/$teamId/players');
    var tmp = Players.fromJson(res.data);

    return tmp;
  }
}
