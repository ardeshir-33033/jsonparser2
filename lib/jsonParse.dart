// To parse this JSON data, do
//
//     final state = stateFromJson(jsonString);

import 'dart:convert';

List<State> stateFromJson(String str) => List<State>.from(json.decode(str).map((x) => State.fromJson(x)));

String stateToJson(List<State> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class State {
  State({
    this.id,
    this.name,
    this.cities,
  });

  String id;
  String name;
  List<City> cities;

  factory State.fromJson(Map<String, dynamic> json) => State(
    id: json["id"],
    name: json["name"],
    cities: List<City>.from(json["cities"].map((x) => City.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "cities": List<dynamic>.from(cities.map((x) => x.toJson())),
  };
}

class City {
  City({
    this.id,
    this.name,
  });

  String id;
  String name;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

