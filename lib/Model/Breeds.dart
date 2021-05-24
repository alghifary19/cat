// To parse this JSON data, do
//
//     final breeds = breedsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Breeds> breedsFromJson(String str) =>
    List<Breeds>.from(json.decode(str).map((x) => Breeds.fromJson(x)));

String breedsToJson(List<Breeds> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Breeds {
  Breeds({
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
    @required this.image,
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
    @required this.bidability,
    @required this.catFriendly,
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
  final Image image;
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
  final int bidability;
  final int catFriendly;

  factory Breeds.fromJson(Map<String, dynamic> json) => Breeds(
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        altNames: json["alt_names"] == null ? null : json["alt_names"],
        cfaUrl: json["cfa_url"] == null ? null : json["cfa_url"],
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
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        indoor: json["indoor"],
        intelligence: json["intelligence"],
        lap: json["lap"] == null ? null : json["lap"],
        lifeSpan: json["life_span"],
        name: json["name"],
        natural: json["natural"],
        origin: json["origin"],
        rare: json["rare"],
        referenceImageId: json["reference_image_id"] == null
            ? null
            : json["reference_image_id"],
        rex: json["rex"],
        sheddingLevel: json["shedding_level"],
        shortLegs: json["short_legs"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        suppressedTail: json["suppressed_tail"],
        temperament: json["temperament"],
        vcahospitalsUrl:
            json["vcahospitals_url"] == null ? null : json["vcahospitals_url"],
        vetstreetUrl:
            json["vetstreet_url"] == null ? null : json["vetstreet_url"],
        vocalisation: json["vocalisation"],
        weight: Weight.fromJson(json["weight"]),
        wikipediaUrl:
            json["wikipedia_url"] == null ? null : json["wikipedia_url"],
        bidability: json["bidability"] == null ? null : json["bidability"],
        catFriendly: json["cat_friendly"] == null ? null : json["cat_friendly"],
      );

  Map<String, dynamic> toJson() => {
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "alt_names": altNames == null ? null : altNames,
        "cfa_url": cfaUrl == null ? null : cfaUrl,
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
        "image": image == null ? null : image.toJson(),
        "indoor": indoor,
        "intelligence": intelligence,
        "lap": lap == null ? null : lap,
        "life_span": lifeSpan,
        "name": name,
        "natural": natural,
        "origin": origin,
        "rare": rare,
        "reference_image_id":
            referenceImageId == null ? null : referenceImageId,
        "rex": rex,
        "shedding_level": sheddingLevel,
        "short_legs": shortLegs,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "suppressed_tail": suppressedTail,
        "temperament": temperament,
        "vcahospitals_url": vcahospitalsUrl == null ? null : vcahospitalsUrl,
        "vetstreet_url": vetstreetUrl == null ? null : vetstreetUrl,
        "vocalisation": vocalisation,
        "weight": weight.toJson(),
        "wikipedia_url": wikipediaUrl == null ? null : wikipediaUrl,
        "bidability": bidability == null ? null : bidability,
        "cat_friendly": catFriendly == null ? null : catFriendly,
      };
}

class Image {
  Image({
    @required this.height,
    @required this.id,
    @required this.url,
    @required this.width,
  });

  final int height;
  final String id;
  final String url;
  final int width;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        height: json["height"] == null ? null : json["height"],
        id: json["id"] == null ? null : json["id"],
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height == null ? null : height,
        "id": id == null ? null : id,
        "url": url == null ? null : url,
        "width": width == null ? null : width,
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
