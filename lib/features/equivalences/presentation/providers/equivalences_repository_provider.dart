import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritional_equivalences_app/features/equivalences/data/data.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

final equivalencesRepositoryProvider = Provider<EquivalencesRepository>((ref) {

  final datasource = EquivalencesDatasourceImpl();

  final equivalenceRepository = EquivalencesRepositoryImpl(
    datasource: datasource,
  );

  return equivalenceRepository;
});