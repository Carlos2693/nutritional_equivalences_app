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
    final List<Widget> list = [];

    equivalence.numberByGroup.forEach((key, value) {
      final widget = GestureDetector(
        onTap: onClick(key, value.toString()),
        child: CustomChip(
          contentLabel: key,
          contentAvatar: value,
        ),
      );
      list.add(widget);
    });

    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: list,
    );
  }
}
