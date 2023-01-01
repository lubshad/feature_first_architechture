import 'package:feature_first/src/features/navigation_screen/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/details_screen/details_screen.dart';

class AppRoute {
  static GoRouter routerConfig = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const NavigationScreen();
        },
        routes: routes,
      ),
    ],
  );

  static String details = "details";

  static List<RouteBase> routes = <RouteBase>[
    GoRoute(
      name: details,
      path: details,
      builder: (BuildContext context, GoRouterState state) {
        return DetailsScreen(details: details);
      },
    ),
  ];
}
