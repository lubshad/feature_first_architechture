import 'package:feature_first/src/features/details_screen/details_screen.dart';
import 'package:feature_first/src/features/home_screen/home_screen.dart';
import 'package:feature_first/src/features/navigation_screen/navigation_screen.dart';
import 'package:feature_first/src/route/app_route.dart';
import 'package:feature_first/src/core/di.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  DI.inject();
  runApp(
    const GetMaterialApp(
      initialRoute: AppRoute.initial,
      onGenerateRoute: AppRoute.onGenerateRoute,
    ),
  );
}
