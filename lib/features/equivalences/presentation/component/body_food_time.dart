import 'package:flutter/material.dart';
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
      return GestureDetector(
        onTap: () { },
        child: CustomChip(
          contentLabel: entry.key,
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
