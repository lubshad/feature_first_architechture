import 'package:feature_first/src/route/app_route.dart';
import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            routes: AppRoute.routes,
            builder: (context, state) => Scaffold(
              backgroundColor: Colors.blue,
              body: Center(
                child: GestureDetector(
                    onTap: () =>
                        context.goNamed(AppRoute.details, extra: "check"),
                    child: Text(Screens.home.label)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
