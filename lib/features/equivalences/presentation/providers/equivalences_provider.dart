import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

import 'equivalences_repository_provider.dart';

// Step 3 provider
final productsProvider = StateNotifierProvider<EquivalencesNotifier, EquivalencesState>((ref) {
  final equivalencesRepository = ref.watch(equivalencesRepositoryProvider);

  return EquivalencesNotifier(
    equivalencesRepository: equivalencesRepository,
  );
});

// Step 2 Notifier
class EquivalencesNotifier extends StateNotifier<EquivalencesState> {

  final EquivalencesRepository equivalencesRepository;

  EquivalencesNotifier({
    required this.equivalencesRepository,
  }) : super(EquivalencesState());
  
  Future loadData(BuildContext context) async {
    final timeDay = await equivalencesRepository.getEquivalences(context);

    state = state.copyWith(
      timeDay: timeDay,
    );
  }
}

// Step 1 state
class EquivalencesState {
  final TimeDay? timeDay;

  EquivalencesState({
    this.timeDay,
  });

  EquivalencesState copyWith({
    TimeDay? timeDay,
  }) => EquivalencesState(
    timeDay: timeDay ?? this.timeDay,
  );
}