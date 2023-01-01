import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import '../profile_screen/profile_screen.dart';

enum Screens {
  home,
  profile,
}

extension ScreenExtension on Screens {
  Widget get body {
    switch (this) {
      case Screens.home:
        return const HomeScreen();
      case Screens.profile:
        return const ProfileScreen();
    }
  }

  Widget get icon {
    switch (this) {
      case Screens.home:
        return const Icon(Icons.home);
      case Screens.profile:
        return const Icon(Icons.person);
    }
  }

  String get label {
    switch (this) {
      case Screens.home:
        return "Home";
      case Screens.profile:
        return "Profile";
    }
  }
}
