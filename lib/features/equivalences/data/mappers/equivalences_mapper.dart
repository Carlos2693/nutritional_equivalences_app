import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class EquivalencesMapper {
  static jsonToEntity(Map<String, dynamic> json) => Equivalence(
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
