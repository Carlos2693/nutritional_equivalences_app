class Equivalence {
  // Key group
  final String nameEquivalence;
  // number groups
  final double vegetableGroup;
  final double fruitGroup;
  final double cerealsGroup;
  final double foodAnimalOriginGroup;
  final double legumesGroup;
  final double dairyGroup;
  final double fatsWithoutProteinGroup;
  final double fatsWithProteinGroup;
  final double sugarsGroup;

  Equivalence({
    required this.nameEquivalence,
    required this.vegetableGroup,
    required this.fruitGroup,
    required this.cerealsGroup,
    required this.foodAnimalOriginGroup,
    required this.legumesGroup,
    required this.dairyGroup,
    required this.fatsWithoutProteinGroup,
    required this.fatsWithProteinGroup,
    required this.sugarsGroup,
  });

  factory Equivalence.fromJson(Map<String, dynamic> json) => Equivalence(
    nameEquivalence: json['nameEquivalence'] ?? '',
    vegetableGroup: json['vegetableGroup'] ?? 0.0,
    fruitGroup: json['fruitGroup'] ?? 0.0,
    cerealsGroup: json['cerealsGroup'] ?? 0.0,
    foodAnimalOriginGroup: json['foodAnimalOriginGroup'] ?? 0.0,
    legumesGroup: json['legumesGroup'] ?? 0.0,
    dairyGroup: json['dairyGroup'] ?? 0.0,
    fatsWithoutProteinGroup: json['fatsWithoutProteinGroup'] ?? 0.0,
    fatsWithProteinGroup: json['fatsWithProteinGroup'] ?? 0.0,
    sugarsGroup: json['sugarsGroup'] ?? 0.0,
  );
}
