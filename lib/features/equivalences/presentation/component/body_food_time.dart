import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:nutritional_equivalences_app/config/const/const.dart';
import 'package:nutritional_equivalences_app/config/extension/object.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/component/component.dart';

class BodyFoodTime extends StatelessWidget {
  final Equivalence equivalence;
  final Function(String, String) onClick;

  const BodyFoodTime({
    super.key, 
    required this.onClick,
    required this.equivalence,
  });

  @override
  Widget build(BuildContext context) {

    final entries = equivalence.numberByGroup.entries;
    final widgetList = entries.map((entry) {
      final entryKey = entry.key;
      final newKey = portionsByName[entryKey].value();
      return GestureDetector(
        onTap: () {
          context.push('/group/$entryKey');
        },
        child: CustomChip(
          contentLabel: newKey,
          contentAvatar: entry.value,
        ),
      );
    }).toList();

    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: widgetList,
    );
  }
}
