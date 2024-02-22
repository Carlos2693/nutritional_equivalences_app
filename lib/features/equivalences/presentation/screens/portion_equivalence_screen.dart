import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutritional_equivalences_app/config/const/const.dart';
import 'package:nutritional_equivalences_app/config/extension/object.dart';
import 'package:nutritional_equivalences_app/config/const/portion_const.dart';

class GroupEquivalenceScreen extends ConsumerWidget {
  final String groupId;

  const GroupEquivalenceScreen({
    super.key,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portions = Portions();
    final newKey = portionsByName[groupId].value();

    return Scaffold(
      appBar: AppBar(
        title: Text('${portions.appBarText} $newKey'),
      ),
      body: _buildListPortions(groupId),
    );
  }
}

_buildListPortions(String groupId) {
  final portions = Portions();
  final portionMap = portions.portionsByName[groupId];

  if (portionMap != null) {
    final portionList = portionMap.entries.toList();

    return ListView.builder(
      itemCount: portionMap.length,
      itemBuilder: (context, index) {
        final item = portionList[index];
        return CardPortion(
          textPortion: item.key,
          valuePortion: item.value,
        );
      },
    );
  }
}

class CardPortion extends StatelessWidget {
  const CardPortion({
    super.key,
    required this.textPortion,
    required this.valuePortion,
  });

  final String textPortion;
  final String valuePortion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text(
              textPortion,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                valuePortion,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
