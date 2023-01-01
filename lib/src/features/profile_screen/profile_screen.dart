import 'package:feature_first/src/route/app_route.dart';
import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => Scaffold(
              backgroundColor: Colors.red,
              body: Center(
                child: Text(Screens.profile.label),
              ),
            ),
            routes: AppRoute.routes,
          ),
        ],
      ),
    );
  }
}
