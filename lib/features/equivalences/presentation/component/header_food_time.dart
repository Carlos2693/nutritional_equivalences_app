import 'package:flutter/material.dart';

class HeaderFoodTime extends StatelessWidget {
  final String visibleTitle;
  final String title;
  final Function(String) onClick;

  const HeaderFoodTime({
    super.key,
    required this.visibleTitle,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(title),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Text(visibleTitle),
      ),
    );
  }
}
