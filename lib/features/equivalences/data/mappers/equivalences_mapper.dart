import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class EquivalenceMapper {
  static jsonToEntity(Map<String, dynamic> json) => Equivalence(
    nameEquivalence: json['nameEquivalence'],
    vegetableGroup: json['vegetableGroup'],
    fruitGroup: json['fruitGroup'],
    cerealsGroup: json['cerealsGroup'],
    foodAnimalOriginGroup: json['foodAnimalOriginGroup'],
    legumesGroup: json['legumesGroup'],
    dairyGroup: json['dairyGroup'],
    fatsWithoutProteinGroup: json['fatsWithoutProteinGroup'],
    fatsWithProteinGroup: json['fatsWithProteinGroup'],
    sugarsGroup: json['sugarsGroup'],
  );
}