import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';
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

        return _CardFoodTime(
          title: currentKey,
          // TODO make blank object
          equivalence: equivalence!,
          onClick: (String key, String value) {
            print('$key, $value');
          },
        );
      },
    );
  }
}

class _CardFoodTime extends StatelessWidget {
  final String title;
  final Equivalence equivalence;
  final Function(String, String) onClick;

  const _CardFoodTime({
    required this.title,
    required this.equivalence,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _HeaderFoodTime(
          title: title,
          onClick: (String title) {},
        ),
        _BodyFoodTime(
          equivalence: equivalence,
          onClick: (String key, String value) => onClick(key, value),
        )
      ],
    );
  }
}

class _HeaderFoodTime extends StatelessWidget {
  final String title;
  final Function(String) onClick;

  const _HeaderFoodTime({
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
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Text(title),
      ),
    );
  }
}

class _BodyFoodTime extends StatelessWidget {
  final Equivalence equivalence;
  final Function(String, String) onClick;

  const _BodyFoodTime({
    required this.onClick,
    required this.equivalence,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = [];

    final key = 'vegetableGroup';
    final value = equivalence.vegetableGroup;

    final widget = GestureDetector(
      onTap: onClick(key, value.toString()),
      child: _CustomChip(
        contentLabel: key,
        contentAvatar: value.toString(),
      ),
    );
    list.add(widget);
    // equivalence.forEach((key, value) {
    //   final widget = GestureDetector(
    //     onTap: onClick(key, value.toString()),
    //     child: _CustomChip(
    //       contentLabel: key,
    //       contentAvatar: value.toString(),
    //     ),
    //   );
    //   list.add(widget);
    // });

    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: list,
    );
  }
}

class _CustomChip extends StatelessWidget {
  final String contentLabel;
  final String contentAvatar;

  const _CustomChip({
    required this.contentLabel,
    required this.contentAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(contentAvatar),
      ),
      label: Text(contentLabel, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.redAccent,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
    );
  }
}
