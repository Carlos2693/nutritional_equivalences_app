import 'package:flutter/material.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

abstract class EquivalencesRepository {
  Future<TimeDay> getEquivalences(BuildContext context);
}

