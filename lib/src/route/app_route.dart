import 'package:feature_first/src/features/details_screen/details_screen.dart';
import 'package:feature_first/src/features/home_screen/home_screen.dart';
import 'package:feature_first/src/features/navigation_screen/navigation_screen.dart';
import 'package:feature_first/src/features/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String initial = "/";
  static const String home = "/home";
  static const String details = "/details";
  static const String profile = "/profile";
  static const String secondScreen = "/secondScreen";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (getRouteName(settings)) {
      case initial:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const NavigationScreen());
      case home:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const HomeScreen());
      case details:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) => const DetailsScreen(details: ""));
      case profile:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const ProfileScreen());
      case secondScreen:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const Scaffold());
    }
    return null;
  }

  static String getRouteName(RouteSettings settings) {
    String routeName = Uri.parse(settings.name!).path;
    print(routeName);
    return routeName;
  }
}
