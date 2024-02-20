import 'package:flutter/material.dart';

import 'dart:math' show pow;

class CustomChip extends StatelessWidget {
  final String contentLabel;
  final double contentAvatar;

  const CustomChip({
    super.key,
    required this.contentLabel,
    required this.contentAvatar,
  });

  String buildCountFraction(double count) {
    const places = 2;

    final fraction = (count % 1 * pow(10, places)).floor();
    final integer = count.floor();

    var suffix = '';
    switch (fraction) {
      case 25:
        suffix = '¼';
      case 50:
        suffix = '½';
      case 75:
        suffix = '¾';
      default:
        suffix = '';
    }

    if (integer == 0) {
      return suffix;
    }
    return "$integer$suffix";
  }

  @override
  Widget build(BuildContext context) {
    final finalAvatar = buildCountFraction(contentAvatar);
    return Chip(
      labelPadding: const EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(finalAvatar),
      ),
      label: Text(
        contentLabel,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.redAccent,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}
