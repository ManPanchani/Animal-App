class AnimalsType {
  static List animalType = [
    "Mammals",
    "Birds",
    "Fish",
    "Reptiles",
    "Amphibians",
    "Invertebrates",
  ];
}

class Animal {
  int? id;
  String name;
  String description;
  String image;
  String type;

  Animal({
    this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.type,
  });

  factory Animal.fromMap(Map<String, dynamic> data) {
    return Animal(
        id: data['id'],
        name: data['name'],
        description: data['description'],
        image: data['image'],
        type: data['type']);
  }
}

