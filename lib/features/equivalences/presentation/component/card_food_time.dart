import 'package:flutter/material.dart';
import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/component/component.dart';

class CardFoodTime extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderFoodTime(
          title: title,
          onClick: (String title) {},
        ),
        BodyFoodTime(
          equivalence: equivalence,
          onClick: (String key, String value) => onClick(key, value),
        )
      ],
    );
  }
}
