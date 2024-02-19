import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class EquivalencesMapper {
  static Equivalence jsonToEntity(Map<String, dynamic> json) {
    final mapBuilded = <String, double>{};

    json.forEach((key, value) {
      if (value is double) {
        mapBuilded[key] = value;
      } else if(value is String) {
        mapBuilded[key] = double.tryParse(value) ?? 0.0;
      } else {
        mapBuilded[key] = 0.0;
      }
    });

    return Equivalence(numberByGroup: mapBuilded);
  }
}
