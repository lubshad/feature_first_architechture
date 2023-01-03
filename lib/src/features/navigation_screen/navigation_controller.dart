import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends ChangeNotifier {
  static NavigationController get i => Get.find();
  Screens currentScreen = Screens.home;

  void changeScreen(int value, BuildContext context) {
    // if (value == currentScreen.index) {
    //   Navigator.of(context).pop();
    // }
    currentScreen = Screens.values[value];
    notifyListeners();
  }
}
