import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritional_equivalences_app/config/const/const.dart';

import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/component/component.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/providers/provider.dart';

class CardFoodTime extends ConsumerWidget {
  final String title;
  final Equivalence equivalence;
  final Function(String, String) onClick;

  const CardFoodTime({
    super.key, 
    required this.title,
    required this.equivalence,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardFoodSelected = ref.watch(cardFoodTimeProvider);
    final newTitle = foodTimes[title] ?? 'pp';

    return Column(
      children: [
        HeaderFoodTime(
          visibleTitle: newTitle,
          title: title,
          onClick: (String title) {
            ref.read(cardFoodTimeProvider.notifier).update((state) => title);
          },
        ),
        if (title == cardFoodSelected)
          BodyFoodTime(
            equivalence: equivalence,
            onClick: (String key, String value) => onClick(key, value),
          )
      ],
    );
  }
}
