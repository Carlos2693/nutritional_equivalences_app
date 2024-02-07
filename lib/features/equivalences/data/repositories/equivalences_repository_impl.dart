import 'package:flutter/material.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class EquivalencesRepositoryImpl extends EquivalencesRepository {

  final EquivalencesDatasource datasource;

  EquivalencesRepositoryImpl({required this.datasource});

  @override
  Future<TimeDay> getEquivalences(BuildContext context) {
    return datasource.getEquivalences(context);
  }
}