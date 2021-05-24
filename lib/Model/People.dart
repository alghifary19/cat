// To parse this JSON data, do
//
//     final people = peopleFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<People> peopleFromJson(String str) => List<People>.from(json.decode(str).map((x) => People.fromJson(x)));

String peopleToJson(List<People> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class People {
  People({
    @required this.id,
    @required this.name,
    @required this.gender,
    @required this.age,
    @required this.eyeColor,
    @required this.hairColor,
    @required this.films,
    @required this.species,
    @required this.url,
  });

  final String id;
  final String name;
  final Gender gender;
  final String age;
  final String eyeColor;
  final String hairColor;
  final List<String> films;
  final String species;
  final String url;

  factory People.fromJson(Map<String, dynamic> json) => People(
    id: json["id"],
    name: json["name"],
    gender: genderValues.map[json["gender"]],
    age: json["age"],
    eyeColor: json["eye_color"],
    hairColor: json["hair_color"],
    films: List<String>.from(json["films"].map((x) => x)),
    species: json["species"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "gender": genderValues.reverse[gender],
    "age": age,
    "eye_color": eyeColor,
    "hair_color": hairColor,
    "films": List<dynamic>.from(films.map((x) => x)),
    "species": species,
    "url": url,
  };
}

enum Gender { MALE, FEMALE, NA }

final genderValues = EnumValues({
  "Female": Gender.FEMALE,
  "Male": Gender.MALE,
  "NA": Gender.NA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
