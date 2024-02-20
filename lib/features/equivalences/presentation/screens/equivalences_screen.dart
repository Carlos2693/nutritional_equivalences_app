import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/component/component.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/providers/provider.dart';

class EquivalencesScreen extends StatelessWidget {
  const EquivalencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equivalencias'),
      ),
      body: const _EquivalencesView(),
    );
  }
}

class _EquivalencesView extends ConsumerStatefulWidget {
  const _EquivalencesView();

  @override
  _EquivalencesViewState createState() => _EquivalencesViewState();
}

class _EquivalencesViewState extends ConsumerState {

  @override
  void initState() {
    super.initState();
    ref.read(productsProvider.notifier).loadData(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final timeDay = ref.watch(productsProvider).timeDay;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: timeDay != null
          ? _MealsOfDayScreen(timeDay)
          : const Text('Loading'),
    );
  }
}

class _MealsOfDayScreen extends StatelessWidget {
  final TimeDay timeDay;

  const _MealsOfDayScreen(this.timeDay);

  @override
  Widget build(BuildContext context) {
    final equivalences = timeDay.equivalences;
    final keysEquivalences = equivalences.keys.toList();

    return ListView.builder(
      itemCount: keysEquivalences.length,
      itemBuilder: (context, index) {
        final currentKey = keysEquivalences[index];
        final equivalence = equivalences[currentKey];

        return CardFoodTime(
          title: currentKey,
          // TODO make blank object
          equivalence: equivalence!,
          onClick: (String key, String value) {
            // print('$key, $value');
          },
        );
      },
    );
  }
}
