enum Difficulty {
  beginner,
  intermediate,
  advanced,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Workout {
  const Workout({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.equipments,
    required this.steps,
    required this.duration,
    required this.difficulty,
    required this.affordability,
    required this.isfatloss,
    required this.ismusclegain,
    required this.isnoequipments,
    required this.isgymmachine,
    required this.description,
    required this.vidurl,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> description;
  final List<String> equipments;
  final List<String> steps;
  final int duration;
  final Difficulty difficulty;
  final Affordability affordability;
  final bool isfatloss;
  final bool ismusclegain;
  final bool isnoequipments;
  final bool isgymmachine;
  final String vidurl;
  
}