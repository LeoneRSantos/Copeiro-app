class ListaDePartidas {
  Query? query;
  List<PartidaUnica>? data;

  ListaDePartidas({this.query, this.data});

  ListaDePartidas.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? new Query.fromJson(json['query']) : null;
    if (json['data'] != null) {
      data = <PartidaUnica>[];
      json['data'].forEach((v) {
        data!.add(new PartidaUnica.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.query != null) {
      data['query'] = this.query!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Query {
  String? apikey;
  String? seasonId;
  String? dateTo;

  Query({this.apikey, this.seasonId, this.dateTo});

  Query.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    seasonId = json['season_id'];
    dateTo = json['date_to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apikey'] = this.apikey;
    data['season_id'] = this.seasonId;
    data['date_to'] = this.dateTo;
    return data;
  }
}

class PartidaUnica {
  int? matchId;
  int? statusCode;
  String? status;
  String? matchStart;
  String? matchStartIso;
  int? minute;
  int? leagueId;
  int? seasonId;
  Stage? stage;
  Group? group;
  Round? round;
  int? refereeId;
  HomeTeam? homeTeam;
  HomeTeam? awayTeam;
  Stats? stats;
  Venue? venue;

  PartidaUnica(
      {this.matchId,
      this.statusCode,
      this.status,
      this.matchStart,
      this.matchStartIso,
      this.minute,
      this.leagueId,
      this.seasonId,
      this.stage,
      this.group,
      this.round,
      this.refereeId,
      this.homeTeam,
      this.awayTeam,
      this.stats,
      this.venue});

  PartidaUnica.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    statusCode = json['status_code'];
    status = json['status'];
    matchStart = json['match_start'];
    matchStartIso = json['match_start_iso'];
    minute = json['minute'];
    leagueId = json['league_id'];
    seasonId = json['season_id'];
    stage = json['stage'] != null ? new Stage.fromJson(json['stage']) : null;
    group = json['group'] != null ? new Group.fromJson(json['group']) : null;
    round = json['round'] != null ? new Round.fromJson(json['round']) : null;
    refereeId = json['referee_id'];
    homeTeam = json['home_team'] != null
        ? new HomeTeam.fromJson(json['home_team'])
        : null;
    awayTeam = json['away_team'] != null
        ? new HomeTeam.fromJson(json['away_team'])
        : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['match_id'] = this.matchId;
    data['status_code'] = this.statusCode;
    data['status'] = this.status;
    data['match_start'] = this.matchStart;
    data['match_start_iso'] = this.matchStartIso;
    data['minute'] = this.minute;
    data['league_id'] = this.leagueId;
    data['season_id'] = this.seasonId;
    if (this.stage != null) {
      data['stage'] = this.stage!.toJson();
    }
    if (this.group != null) {
      data['group'] = this.group!.toJson();
    }
    if (this.round != null) {
      data['round'] = this.round!.toJson();
    }
    data['referee_id'] = this.refereeId;
    if (this.homeTeam != null) {
      data['home_team'] = this.homeTeam!.toJson();
    }
    if (this.awayTeam != null) {
      data['away_team'] = this.awayTeam!.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats!.toJson();
    }
    if (this.venue != null) {
      data['venue'] = this.venue!.toJson();
    }
    return data;
  }
}

class Stage {
  int? stageId;
  String? name;

  Stage({this.stageId, this.name});

  Stage.fromJson(Map<String, dynamic> json) {
    stageId = json['stage_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stage_id'] = this.stageId;
    data['name'] = this.name;
    return data;
  }
}

class Group {
  int? groupId;
  String? groupName;

  Group({this.groupId, this.groupName});

  Group.fromJson(Map<String, dynamic> json) {
    groupId = json['group_id'];
    groupName = json['group_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['group_id'] = this.groupId;
    data['group_name'] = this.groupName;
    return data;
  }
}

class Round {
  int? roundId;
  String? name;
  int? isCurrent;

  Round({this.roundId, this.name, this.isCurrent});

  Round.fromJson(Map<String, dynamic> json) {
    roundId = json['round_id'];
    name = json['name'];
    isCurrent = json['is_current'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['round_id'] = this.roundId;
    data['name'] = this.name;
    data['is_current'] = this.isCurrent;
    return data;
  }
}

class HomeTeam {
  int? teamId;
  String? name;
  String? shortCode;
  String? commonName;
  String? logo;
  Country? country;

  HomeTeam(
      {this.teamId,
      this.name,
      this.shortCode,
      this.commonName,
      this.logo,
      this.country});

  HomeTeam.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortCode = json['short_code'];
    commonName = json['common_name'];
    logo = json['logo'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['name'] = this.name;
    data['short_code'] = this.shortCode;
    data['common_name'] = this.commonName;
    data['logo'] = this.logo;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    return data;
  }
}

class Country {
  int? countryId;
  String? name;
  String? countryCode;
  String? continent;

  Country({this.countryId, this.name, this.countryCode, this.continent});

  Country.fromJson(Map<String, dynamic> json) {
    countryId = json['country_id'];
    name = json['name'];
    countryCode = json['country_code'];
    continent = json['continent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_id'] = this.countryId;
    data['name'] = this.name;
    data['country_code'] = this.countryCode;
    data['continent'] = this.continent;
    return data;
  }
}

class Stats {
  int? homeScore;
  int? awayScore;
  String? htScore;
  String? ftScore;
  Null? etScore;
  Null? psScore;

  Stats(
      {this.homeScore,
      this.awayScore,
      this.htScore,
      this.ftScore,
      this.etScore,
      this.psScore});

  Stats.fromJson(Map<String, dynamic> json) {
    homeScore = json['home_score'];
    awayScore = json['away_score'];
    htScore = json['ht_score'];
    ftScore = json['ft_score'];
    etScore = json['et_score'];
    psScore = json['ps_score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['home_score'] = this.homeScore;
    data['away_score'] = this.awayScore;
    data['ht_score'] = this.htScore;
    data['ft_score'] = this.ftScore;
    data['et_score'] = this.etScore;
    data['ps_score'] = this.psScore;
    return data;
  }
}

class Venue {
  int? venueId;
  String? name;
  int? capacity;
  String? city;
  int? countryId;

  Venue({this.venueId, this.name, this.capacity, this.city, this.countryId});

  Venue.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    name = json['name'];
    capacity = json['capacity'];
    city = json['city'];
    countryId = json['country_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['venue_id'] = this.venueId;
    data['name'] = this.name;
    data['capacity'] = this.capacity;
    data['city'] = this.city;
    data['country_id'] = this.countryId;
    return data;
  }
}