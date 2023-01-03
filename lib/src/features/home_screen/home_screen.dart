import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:feature_first/src/route/app_route.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(AppRoute.details),
            child: Text(Screens.home.label)),
      ),
    );
  }
}
