class Model {
  int? threshold;
  String? fname;
  String? mname;
  String? nat;
  String? source;
  String? queryId;
  String? queryUuid;
  String? queryTime;
  String? queryType;
  String? queryStatus;
  String? resultTime;
  bool? isBatchQuery;
  List<ScreenResult>? screenResult;

  Model({this.threshold, this.fname, this.mname, this.nat, this.source, this.queryId, this.queryUuid, this.queryTime, this.queryType, this.queryStatus, this.resultTime, this.isBatchQuery, this.screenResult});

  Model. fromJson(Map<String, dynamic> json) {
    threshold = json['threshold'];
    fname = json['fname'];
    mname = json['mname'];
    nat = json['nat'];
    source = json['source'];
    queryId = json['query_id'];
    queryUuid = json['query_uuid'];
    queryTime = json['query_time'];
    queryType = json['query_type'];
    queryStatus = json['query_status'];
    resultTime = json['result_time'];
    isBatchQuery = json['is_batch_query'];
    if (json['screen_result'] != null) {
      screenResult = <ScreenResult>[];
      json['screen_result'].forEach((v) { screenResult!.add(new ScreenResult.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['threshold'] = this.threshold;
    data['fname'] = this.fname;
    data['mname'] = this.mname;
    data['nat'] = this.nat;
    data['source'] = this.source;
    data['query_id'] = this.queryId;
    data['query_uuid'] = this.queryUuid;
    data['query_time'] = this.queryTime;
    data['query_type'] = this.queryType;
    data['query_status'] = this.queryStatus;
    data['result_time'] = this.resultTime;
    data['is_batch_query'] = this.isBatchQuery;
    if (this.screenResult != null) {
      data['screen_result'] = this.screenResult!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ScreenResult {
  int? score;
  bool? isWhiteListed;
  bool? isTruePositive;
  String? name;
  List<String>? aliases;
  WatchList? watchList;
  String? entityUuid;
  String? listUuid;
  List<Addresses>? addresses;
  List<List>? associates;
  List<Associations>? associations;
  List<SearchTypes>? searchTypes;
  String? date;
  String? pob;
  String? nat;
  String? iden;
  String? entityType;
  String? gender;
  String? activeStatus;
  List<Names>? names;
  List<Descriptions>? descriptions;
  List<Occupations>? occupations;
  List<Dates>? dates;
  List<String>? placesOfBirth;
  List<SanctionListReferences>? sanctionListReferences;
  List<Countries>? countries;
  List<Identifications>? identifications;
  List<String>? sourceNames;
  List<String>? imageUrls;
  String? profileNotes;
  String? additionDate;
  String? lastReviewedDate;

  ScreenResult({this.score, this.isWhiteListed, this.isTruePositive, this.name, this.aliases, this.watchList, this.entityUuid, this.listUuid, this.addresses, this.associates, this.associations, this.searchTypes, this.date, this.pob, this.nat, this.iden, this.entityType, this.gender, this.activeStatus, this.names, this.descriptions, this.occupations, this.dates, this.placesOfBirth, this.sanctionListReferences, this.countries, this.identifications, this.sourceNames, this.imageUrls, this.profileNotes, this.additionDate, this.lastReviewedDate});

  ScreenResult.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    isWhiteListed = json['is_white_listed'];
    isTruePositive = json['is_true_positive'];
    name = json['name'];
    aliases = json['aliases'].cast<String>();
    watchList = json['watch_list'] != null ? new WatchList.fromJson(json['watch_list']) : null;
    entityUuid = json['entity_uuid'];
    listUuid = json['list_uuid'];
    if (json['addresses'] != null) {
      addresses = <Addresses>[];
      json['addresses'].forEach((v) { addresses!.add(new Addresses.fromJson(v)); });
    }

    if (json['associations'] != null) {
      associations = <Associations>[];
      json['associations'].forEach((v) { associations!.add(new Associations.fromJson(v)); });
    }
    if (json['search_types'] != null) {
      searchTypes = <SearchTypes>[];
      json['search_types'].forEach((v) { searchTypes!.add(new SearchTypes.fromJson(v)); });
    }

    date = json['date'];
    pob = json['pob'];
    nat = json['nat'];
    iden = json['iden'];
    entityType = json['entity_type'];
    gender = json['gender'];
    activeStatus = json['active_status'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) { names!.add(new Names.fromJson(v)); });
    }
    if (json['descriptions'] != null) {
      descriptions = <Descriptions>[];
      json['descriptions'].forEach((v) { descriptions!.add(new Descriptions.fromJson(v)); });
    }
    if (json['occupations'] != null) {
      occupations = <Occupations>[];
      json['occupations'].forEach((v) { occupations!.add(new Occupations.fromJson(v)); });
    }
    if (json['dates'] != null) {
      dates = <Dates>[];
      json['dates'].forEach((v) { dates!.add(new Dates.fromJson(v)); });
    }
    placesOfBirth = json['places_of_birth'].cast<String>();
    if (json['sanction_list_references'] != null) {
      sanctionListReferences = <SanctionListReferences>[];
      json['sanction_list_references'].forEach((v) { sanctionListReferences!.add(new SanctionListReferences.fromJson(v)); });
    }
    if (json['countries'] != null) {
      countries = <Countries>[];
      json['countries'].forEach((v) { countries!.add(new Countries.fromJson(v)); });
    }
    if (json['identifications'] != null) {
      identifications = <Identifications>[];
      json['identifications'].forEach((v) { identifications!.add(new Identifications.fromJson(v)); });
    }
    sourceNames = json['source_names'].cast<String>();
    imageUrls = json['image_urls'].cast<String>();
    profileNotes = json['profile_notes'];
    additionDate = json['addition_date'];
    lastReviewedDate = json['last_reviewed_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['score'] = this.score;
    data['is_white_listed'] = this.isWhiteListed;
    data['is_true_positive'] = this.isTruePositive;
    data['name'] = this.name;
    data['aliases'] = this.aliases;
    if (this.watchList != null) {
      data['watch_list'] = this.watchList!.toJson();
    }
    data['entity_uuid'] = this.entityUuid;
    data['list_uuid'] = this.listUuid;
    if (this.addresses != null) {
      data['addresses'] = this.addresses!.map((v) => v.toJson()).toList();
    }

    if (this.associations != null) {
      data['associations'] = this.associations!.map((v) => v.toJson()).toList();
    }
    if (this.searchTypes != null) {
      data['search_types'] = this.searchTypes!.map((v) => v.toJson()).toList();
    }

    data['date'] = this.date;
    data['pob'] = this.pob;
    data['nat'] = this.nat;
    data['iden'] = this.iden;
    data['entity_type'] = this.entityType;
    data['gender'] = this.gender;
    data['active_status'] = this.activeStatus;
    if (this.names != null) {
      data['names'] = this.names!.map((v) => v.toJson()).toList();
    }
    if (this.descriptions != null) {
      data['descriptions'] = this.descriptions!.map((v) => v.toJson()).toList();
    }
    if (this.occupations != null) {
      data['occupations'] = this.occupations!.map((v) => v.toJson()).toList();
    }
    if (this.dates != null) {
      data['dates'] = this.dates!.map((v) => v.toJson()).toList();
    }
    data['places_of_birth'] = this.placesOfBirth;
    if (this.sanctionListReferences != null) {
      data['sanction_list_references'] = this.sanctionListReferences!.map((v) => v.toJson()).toList();
    }
    if (this.countries != null) {
      data['countries'] = this.countries!.map((v) => v.toJson()).toList();
    }
    if (this.identifications != null) {
      data['identifications'] = this.identifications!.map((v) => v.toJson()).toList();
    }
    data['source_names'] = this.sourceNames;
    data['image_urls'] = this.imageUrls;
    data['profile_notes'] = this.profileNotes;
    data['addition_date'] = this.additionDate;
    data['last_reviewed_date'] = this.lastReviewedDate;
    return data;
  }
}

class WatchList {
  String? listUuid;
  String? name;

  WatchList({this.listUuid, this.name});

  WatchList.fromJson(Map<String, dynamic> json) {
    listUuid = json['list_uuid'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list_uuid'] = this.listUuid;
    data['name'] = this.name;
    return data;
  }
}

class Addresses {
  String? street;
  String? city;
  String? country;
  String? url;

  Addresses({this.street, this.city, this.country, this.url});

  Addresses.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    country = json['country'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['country'] = this.country;
    data['url'] = this.url;
    return data;
  }
}



Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;

}

class Associations {
  String? associateEntityUuid;
  String? name;
  String? relationship;
  bool? isEx;

  Associations({this.associateEntityUuid, this.name, this.relationship, this.isEx});

  Associations.fromJson(Map<String, dynamic> json) {
    associateEntityUuid = json['associate_entity_uuid'];
    name = json['name'];
    relationship = json['relationship'];
    isEx = json['is_ex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['associate_entity_uuid'] = this.associateEntityUuid;
    data['name'] = this.name;
    data['relationship'] = this.relationship;
    data['is_ex'] = this.isEx;
    return data;
  }
}

class SearchTypes {
  int? id;
  String? name;
  String? description;

  SearchTypes({this.id, this.name, this.description});

  SearchTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}

class Names {
  String? type;
  String? subType;
  String? titleHonorific;
  String? firstName;
  String? middleName;
  String? surname;
  String? suffix;

  Names({this.type, this.subType, this.titleHonorific, this.firstName, this.middleName, this.surname, this.suffix});

  Names.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    subType = json['sub_type'];
    titleHonorific = json['title_honorific'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    surname = json['surname'];
    suffix = json['suffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['sub_type'] = this.subType;
    data['title_honorific'] = this.titleHonorific;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['surname'] = this.surname;
    data['suffix'] = this.suffix;
    return data;
  }
}

class Descriptions {
  String? description1;
  String? description2;
  String? description3;

  Descriptions({this.description1, this.description2, this.description3});

  Descriptions.fromJson(Map<String, dynamic> json) {
    description1 = json['description1'];
    description2 = json['description2'];
    description3 = json['description3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description1'] = this.description1;
    data['description2'] = this.description2;
    data['description3'] = this.description3;
    return data;
  }
}

class Occupations {
  String? roleType;
  String? category;
  String? title;
  String? sinceDate;
  String? toDate;

  Occupations({this.roleType, this.category, this.title, this.sinceDate, this.toDate});

  Occupations.fromJson(Map<String, dynamic> json) {
    roleType = json['role_type'];
    category = json['category'];
    title = json['title'];
    sinceDate = json['since_date'];
    toDate = json['to_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role_type'] = this.roleType;
    data['category'] = this.category;
    data['title'] = this.title;
    data['since_date'] = this.sinceDate;
    data['to_date'] = this.toDate;
    return data;
  }
}

class Dates {
  String? type;
  String? date;
  String? notes;

  Dates({this.type, this.date, this.notes});

  Dates.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    date = json['date'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['date'] = this.date;
    data['notes'] = this.notes;
    return data;
  }
}

class SanctionListReferences {
  String? reference;
  String? sinceDate;
  String? toDate;

  SanctionListReferences({this.reference, this.sinceDate, this.toDate});

  SanctionListReferences.fromJson(Map<String, dynamic> json) {
    reference = json['reference'];
    sinceDate = json['since_date'];
    toDate = json['to_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reference'] = this.reference;
    data['since_date'] = this.sinceDate;
    data['to_date'] = this.toDate;
    return data;
  }
}

class Countries {
  String? type;
  String? name;

  Countries({this.type, this.name});

  Countries.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    return data;
  }
}

class Identifications {
  String? type;
  String? value;
  String? notes;

  Identifications({this.type, this.value, this.notes});

  Identifications.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    data['notes'] = this.notes;
    return data;
  }
}