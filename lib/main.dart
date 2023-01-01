import 'package:feature_first/src/route/app_route.dart';
import 'package:feature_first/src/core/di.dart';
import 'package:flutter/material.dart';

main() {
  DI.inject();
  runApp(MaterialApp.router(
    routerConfig: AppRoute.routerConfig,
  ));
}
