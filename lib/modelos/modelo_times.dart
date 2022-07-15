class ModelTimesBrasileiros {
  Query? query;
  List<Data>? data;

  ModelTimesBrasileiros({this.query, this.data});

  ModelTimesBrasileiros.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? new Query.fromJson(json['query']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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
  String? countryId;

  Query({this.apikey, this.countryId});

  Query.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    countryId = json['country_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apikey'] = this.apikey;
    data['country_id'] = this.countryId;
    return data;
  }
}

class Data {
  int? teamId;
  String? name;
  String? shortCode;
  String? commonName;
  String? logo;
  Country? country;

  Data(
      {this.teamId,
      this.name,
      this.shortCode,
      this.commonName,
      this.logo,
      this.country});

  Data.fromJson(Map<String, dynamic> json) {
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