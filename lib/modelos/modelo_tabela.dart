class Tabela {
  Query? query;
  Data? data;
  

  Tabela({this.query, this.data});

  Tabela.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? new Query.fromJson(json['query']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.query != null) {
      data['query'] = this.query!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Query {
  String? apikey;
  String? seasonId;

  Query({this.apikey, this.seasonId});

  Query.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    seasonId = json['season_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apikey'] = this.apikey;
    data['season_id'] = this.seasonId;
    return data;
  }
}

class Data {
  int? seasonId;
  int? leagueId;
  int? hasGroups;
  List<Standings>? standings;

  Data({this.seasonId, this.leagueId, this.hasGroups, this.standings});

  Data.fromJson(Map<String, dynamic> json) {
    seasonId = json['season_id'];
    leagueId = json['league_id'];
    hasGroups = json['has_groups'];
    if (json['standings'] != null) {
      standings = <Standings>[];
      json['standings'].forEach((v) {
        standings!.add(new Standings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['season_id'] = this.seasonId;
    data['league_id'] = this.leagueId;
    data['has_groups'] = this.hasGroups;
    if (this.standings != null) {
      data['standings'] = this.standings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Standings {
  int? teamId;
  int? points;
  String? status;
  String? result;
  Overall? overall;
  Overall? home;
  Overall? away;

  Standings(
      {this.teamId,
      this.points,
      this.status,
      this.result,
      this.overall,
      this.home,
      this.away});

  Standings.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    points = json['points'];
    status = json['status'];
    result = json['result'];
    overall =
        json['overall'] != null ? new Overall.fromJson(json['overall']) : null;
    home = json['home'] != null ? new Overall.fromJson(json['home']) : null;
    away = json['away'] != null ? new Overall.fromJson(json['away']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['points'] = this.points;
    data['status'] = this.status;
    data['result'] = this.result;
    if (this.overall != null) {
      data['overall'] = this.overall!.toJson();
    }
    if (this.home != null) {
      data['home'] = this.home!.toJson();
    }
    if (this.away != null) {
      data['away'] = this.away!.toJson();
    }
    return data;
  }
}

class Overall {
  int? gamesPlayed;
  int? won;
  int? draw;
  int? lost;
  int? goalsDiff;
  int? goalsScored;
  int? goalsAgainst;

  Overall(
      {this.gamesPlayed,
      this.won,
      this.draw,
      this.lost,
      this.goalsDiff,
      this.goalsScored,
      this.goalsAgainst});

  Overall.fromJson(Map<String, dynamic> json) {
    gamesPlayed = json['games_played'];
    won = json['won'];
    draw = json['draw'];
    lost = json['lost'];
    goalsDiff = json['goals_diff'];
    goalsScored = json['goals_scored'];
    goalsAgainst = json['goals_against'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['games_played'] = this.gamesPlayed;
    data['won'] = this.won;
    data['draw'] = this.draw;
    data['lost'] = this.lost;
    data['goals_diff'] = this.goalsDiff;
    data['goals_scored'] = this.goalsScored;
    data['goals_against'] = this.goalsAgainst;
    return data;
  }
}