import 'package:feature_first/src/features/navigation_screen/navigation_controller.dart';
import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:feature_first/src/theme/constrants.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: NavigationController.i,
        builder: (context, child) {
          return Scaffold(
            body: AnimatedSwitcher(
              duration: defaultAnimationDuration,
              child: NavigationController.i.currentScreen.body,
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: NavigationController.i.currentScreen.index,
                onTap: NavigationController.i.changeScreen,
                items: Screens.values
                    .map((e) =>
                        BottomNavigationBarItem(icon: e.icon, label: e.label))
                    .toList()),
          );
        });
  }
}
