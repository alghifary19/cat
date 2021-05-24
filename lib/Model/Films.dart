// To parse this JSON data, do
//
//     final films = filmsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Films> filmsFromJson(String str) => List<Films>.from(json.decode(str).map((x) => Films.fromJson(x)));

String filmsToJson(List<Films> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Films {
  Films({
    @required this.id,
    @required this.title,
    @required this.originalTitle,
    @required this.originalTitleRomanised,
    @required this.description,
    @required this.director,
    @required this.producer,
    @required this.releaseDate,
    @required this.runningTime,
    @required this.rtScore,
    @required this.people,
    @required this.species,
    @required this.locations,
    @required this.vehicles,
    @required this.url,
  });

  final String id;
  final String title;
  final String originalTitle;
  final String originalTitleRomanised;
  final String description;
  final String director;
  final String producer;
  final String releaseDate;
  final String runningTime;
  final String rtScore;
  final List<String> people;
  final List<String> species;
  final List<String> locations;
  final List<String> vehicles;
  final String url;

  factory Films.fromJson(Map<String, dynamic> json) => Films(
    id: json["id"],
    title: json["title"],
    originalTitle: json["original_title"],
    originalTitleRomanised: json["original_title_romanised"],
    description: json["description"],
    director: json["director"],
    producer: json["producer"],
    releaseDate: json["release_date"],
    runningTime: json["running_time"],
    rtScore: json["rt_score"],
    people: List<String>.from(json["people"].map((x) => x)),
    species: List<String>.from(json["species"].map((x) => x)),
    locations: List<String>.from(json["locations"].map((x) => x)),
    vehicles: List<String>.from(json["vehicles"].map((x) => x)),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "original_title": originalTitle,
    "original_title_romanised": originalTitleRomanised,
    "description": description,
    "director": director,
    "producer": producer,
    "release_date": releaseDate,
    "running_time": runningTime,
    "rt_score": rtScore,
    "people": List<dynamic>.from(people.map((x) => x)),
    "species": List<dynamic>.from(species.map((x) => x)),
    "locations": List<dynamic>.from(locations.map((x) => x)),
    "vehicles": List<dynamic>.from(vehicles.map((x) => x)),
    "url": url,
  };
}
