class Fish {
  final String species;
  final String description;
  final String careTips;

  Fish({
    required this.species,
    required this.description,
    required this.careTips,
  });

  Map<String, dynamic> toJson() => {
    'species': species,
    'description': description,
    'careTips': careTips,
  };

  factory Fish.fromJson(Map<String, dynamic> json) {
    return Fish(
      species: json['species'],
      description: json['description'],
      careTips: json['careTips'],
    );
  }
}