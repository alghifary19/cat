// To parse this JSON data, do
//
//     final location = locationFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Location> locationFromJson(String str) => List<Location>.from(json.decode(str).map((x) => Location.fromJson(x)));

String locationToJson(List<Location> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Location {
  Location({
    @required this.id,
    @required this.name,
    @required this.climate,
    @required this.terrain,
    @required this.surfaceWater,
    @required this.residents,
    @required this.films,
    @required this.url,
  });

  final String id;
  final String name;
  final String climate;
  final String terrain;
  final String surfaceWater;
  final List<String> residents;
  final List<String> films;
  final String url;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    name: json["name"],
    climate: json["climate"],
    terrain: json["terrain"],
    surfaceWater: json["surface_water"],
    residents: List<String>.from(json["residents"].map((x) => x)),
    films: List<String>.from(json["films"].map((x) => x)),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "climate": climate,
    "terrain": terrain,
    "surface_water": surfaceWater,
    "residents": List<dynamic>.from(residents.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "url": url,
  };
}
