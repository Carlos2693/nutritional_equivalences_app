import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:nutritional_equivalences_app/config/extension/object.dart';
import 'package:nutritional_equivalences_app/features/equivalences/presentation/screens/screens.dart';

final goRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const EquivalencesScreen(),
      ),
      GoRoute(
        path: '/group/:id',
        builder: (context, state) => GroupEquivalenceScreen(
          groupId: state.pathParameters['id'].value(),
        ),
      )
    ]
  );
});
