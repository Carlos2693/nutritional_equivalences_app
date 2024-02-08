import 'package:nutritional_equivalences_app/features/equivalences/data/data.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class TimeDayMapper {
  static jsonToEntity(Map<String, dynamic> json) {
    final buildMap = <String, Equivalence>{};
    
    json.forEach((key, value) {
      buildMap[key] = EquivalencesMapper.jsonToEntity(value);
    });

    return TimeDay(equivalences: buildMap);
  }
}
