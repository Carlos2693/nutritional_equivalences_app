import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        // TODO controller: ,
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 35,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Text('MasonryGridView example');
        },
      ),
    );
  }
}