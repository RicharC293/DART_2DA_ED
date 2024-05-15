class PeopleModelV2 {
  // "name": "Luke Skywalker",
  // "height": "172",
  // "mass": "77",
  // "hair_color": "blond",

  final String name;
  final double height;
  final double mass;
  final String hairColor;

  PeopleModelV2({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
  });

  /// Factory
  factory PeopleModelV2.fromJson(Map<String, dynamic> json) {
    return PeopleModelV2(
      name: json["name"],
      height: double.tryParse(json["height"] ?? '') ?? 0.0,
      mass: double.tryParse(json["mass"] ?? '') ?? 0.0,
      hairColor: json["hair_color"],
    );
  }
}
