// To parse this JSON data, do
//
//     final vehicles = vehiclesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Vehicles> vehiclesFromJson(String str) => List<Vehicles>.from(json.decode(str).map((x) => Vehicles.fromJson(x)));

String vehiclesToJson(List<Vehicles> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Vehicles {
  Vehicles({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.vehicleClass,
    @required this.length,
    @required this.pilot,
    @required this.films,
    @required this.url,
  });

  final String id;
  final String name;
  final String description;
  final String vehicleClass;
  final String length;
  final String pilot;
  final List<String> films;
  final String url;

  factory Vehicles.fromJson(Map<String, dynamic> json) => Vehicles(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    vehicleClass: json["vehicle_class"],
    length: json["length"],
    pilot: json["pilot"],
    films: List<String>.from(json["films"].map((x) => x)),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "vehicle_class": vehicleClass,
    "length": length,
    "pilot": pilot,
    "films": List<dynamic>.from(films.map((x) => x)),
    "url": url,
  };
}
