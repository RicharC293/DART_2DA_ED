// To parse this JSON data, do
//
//     final peopleModel = peopleModelFromJson(jsonString);

import 'dart:convert';

PeopleModel peopleModelFromJson(String str) => PeopleModel.fromJson(json.decode(str));

String peopleModelToJson(PeopleModel data) => json.encode(data.toJson());

class PeopleModel {
    final String name;
    final String height;
    final String mass;
    final String hairColor;
    final String skinColor;
    final String eyeColor;
    final String birthYear;
    final String gender;
    final String homeworld;
    final List<String> films;
    final List<dynamic> species;
    final List<String> vehicles;
    final List<String> starships;
    final DateTime created;
    final DateTime edited;
    final String url;

    PeopleModel({
        required this.name,
        required this.height,
        required this.mass,
        required this.hairColor,
        required this.skinColor,
        required this.eyeColor,
        required this.birthYear,
        required this.gender,
        required this.homeworld,
        required this.films,
        required this.species,
        required this.vehicles,
        required this.starships,
        required this.created,
        required this.edited,
        required this.url,
    });

    factory PeopleModel.fromJson(Map<String, dynamic> json) => PeopleModel(
        name: json["name"],
        height: json["height"],
        mass: json["mass"],
        hairColor: json["hair_color"],
        skinColor: json["skin_color"],
        eyeColor: json["eye_color"],
        birthYear: json["birth_year"],
        gender: json["gender"],
        homeworld: json["homeworld"],
        films: List<String>.from(json["films"].map((x) => x)),
        species: List<dynamic>.from(json["species"].map((x) => x)),
        vehicles: List<String>.from(json["vehicles"].map((x) => x)),
        starships: List<String>.from(json["starships"].map((x) => x)),
        created: DateTime.parse(json["created"]),
        edited: DateTime.parse(json["edited"]),
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "height": height,
        "mass": mass,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "eye_color": eyeColor,
        "birth_year": birthYear,
        "gender": gender,
        "homeworld": homeworld,
        "films": List<dynamic>.from(films.map((x) => x)),
        "species": List<dynamic>.from(species.map((x) => x)),
        "vehicles": List<dynamic>.from(vehicles.map((x) => x)),
        "starships": List<dynamic>.from(starships.map((x) => x)),
        "created": created.toIso8601String(),
        "edited": edited.toIso8601String(),
        "url": url,
    };
}
