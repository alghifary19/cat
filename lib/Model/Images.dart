// To parse this JSON data, do
//
//     final images = imagesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Images> imagesFromJson(String str) =>
    List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
  Images({
    @required this.breeds,
    @required this.height,
    @required this.id,
    @required this.url,
    @required this.width,
  });

  final List<Breed> breeds;
  final int height;
  final String id;
  final String url;
  final int width;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        breeds: List<Breed>.from(json["breeds"].map((x) => Breed.fromJson(x))),
        height: json["height"],
        id: json["id"],
        url: json["url"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "breeds": List<dynamic>.from(breeds.map((x) => x.toJson())),
        "height": height,
        "id": id,
        "url": url,
        "width": width,
      };
}

class Breed {
  Breed({
    @required this.adaptability,
    @required this.affectionLevel,
    @required this.altNames,
    @required this.cfaUrl,
    @required this.childFriendly,
    @required this.countryCode,
    @required this.countryCodes,
    @required this.description,
    @required this.dogFriendly,
    @required this.energyLevel,
    @required this.experimental,
    @required this.grooming,
    @required this.hairless,
    @required this.healthIssues,
    @required this.hypoallergenic,
    @required this.id,
    @required this.indoor,
    @required this.intelligence,
    @required this.lap,
    @required this.lifeSpan,
    @required this.name,
    @required this.natural,
    @required this.origin,
    @required this.rare,
    @required this.referenceImageId,
    @required this.rex,
    @required this.sheddingLevel,
    @required this.shortLegs,
    @required this.socialNeeds,
    @required this.strangerFriendly,
    @required this.suppressedTail,
    @required this.temperament,
    @required this.vcahospitalsUrl,
    @required this.vetstreetUrl,
    @required this.vocalisation,
    @required this.weight,
    @required this.wikipediaUrl,
  });

  final int adaptability;
  final int affectionLevel;
  final String altNames;
  final String cfaUrl;
  final int childFriendly;
  final String countryCode;
  final String countryCodes;
  final String description;
  final int dogFriendly;
  final int energyLevel;
  final int experimental;
  final int grooming;
  final int hairless;
  final int healthIssues;
  final int hypoallergenic;
  final String id;
  final int indoor;
  final int intelligence;
  final int lap;
  final String lifeSpan;
  final String name;
  final int natural;
  final String origin;
  final int rare;
  final String referenceImageId;
  final int rex;
  final int sheddingLevel;
  final int shortLegs;
  final int socialNeeds;
  final int strangerFriendly;
  final int suppressedTail;
  final String temperament;
  final String vcahospitalsUrl;
  final String vetstreetUrl;
  final int vocalisation;
  final Weight weight;
  final String wikipediaUrl;

  factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        altNames: json["alt_names"],
        cfaUrl: json["cfa_url"],
        childFriendly: json["child_friendly"],
        countryCode: json["country_code"],
        countryCodes: json["country_codes"],
        description: json["description"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        experimental: json["experimental"],
        grooming: json["grooming"],
        hairless: json["hairless"],
        healthIssues: json["health_issues"],
        hypoallergenic: json["hypoallergenic"],
        id: json["id"],
        indoor: json["indoor"],
        intelligence: json["intelligence"],
        lap: json["lap"],
        lifeSpan: json["life_span"],
        name: json["name"],
        natural: json["natural"],
        origin: json["origin"],
        rare: json["rare"],
        referenceImageId: json["reference_image_id"],
        rex: json["rex"],
        sheddingLevel: json["shedding_level"],
        shortLegs: json["short_legs"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        suppressedTail: json["suppressed_tail"],
        temperament: json["temperament"],
        vcahospitalsUrl: json["vcahospitals_url"],
        vetstreetUrl: json["vetstreet_url"],
        vocalisation: json["vocalisation"],
        weight: Weight.fromJson(json["weight"]),
        wikipediaUrl: json["wikipedia_url"],
      );

  Map<String, dynamic> toJson() => {
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "alt_names": altNames,
        "cfa_url": cfaUrl,
        "child_friendly": childFriendly,
        "country_code": countryCode,
        "country_codes": countryCodes,
        "description": description,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "experimental": experimental,
        "grooming": grooming,
        "hairless": hairless,
        "health_issues": healthIssues,
        "hypoallergenic": hypoallergenic,
        "id": id,
        "indoor": indoor,
        "intelligence": intelligence,
        "lap": lap,
        "life_span": lifeSpan,
        "name": name,
        "natural": natural,
        "origin": origin,
        "rare": rare,
        "reference_image_id": referenceImageId,
        "rex": rex,
        "shedding_level": sheddingLevel,
        "short_legs": shortLegs,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "suppressed_tail": suppressedTail,
        "temperament": temperament,
        "vcahospitals_url": vcahospitalsUrl,
        "vetstreet_url": vetstreetUrl,
        "vocalisation": vocalisation,
        "weight": weight.toJson(),
        "wikipedia_url": wikipediaUrl,
      };
}

class Weight {
  Weight({
    @required this.imperial,
    @required this.metric,
  });

  final String imperial;
  final String metric;

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
