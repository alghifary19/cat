// To parse this JSON data, do
//
//     final spesies = spesiesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Spesies> spesiesFromJson(String str) => List<Spesies>.from(json.decode(str).map((x) => Spesies.fromJson(x)));

String spesiesToJson(List<Spesies> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Spesies {
  Spesies({
    @required this.id,
    @required this.name,
    @required this.classification,
    @required this.eyeColors,
    @required this.hairColors,
    @required this.people,
    @required this.films,
    @required this.url,
  });

  final String id;
  final String name;
  final String classification;
  final String eyeColors;
  final String hairColors;
  final List<String> people;
  final List<String> films;
  final String url;

  factory Spesies.fromJson(Map<String, dynamic> json) => Spesies(
    id: json["id"],
    name: json["name"],
    classification: json["classification"],
    eyeColors: json["eye_colors"],
    hairColors: json["hair_colors"],
    people: List<String>.from(json["people"].map((x) => x)),
    films: List<String>.from(json["films"].map((x) => x)),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "classification": classification,
    "eye_colors": eyeColors,
    "hair_colors": hairColors,
    "people": List<dynamic>.from(people.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "url": url,
  };
}
