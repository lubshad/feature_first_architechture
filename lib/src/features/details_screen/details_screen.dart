import 'package:feature_first/src/route/app_route.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.details,
  }) : super(key: key);

  final String details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(AppRoute.secondScreen),
            child: const Text("details")),
      ),
    );
  }
}
