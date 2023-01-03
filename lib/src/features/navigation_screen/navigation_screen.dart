import 'package:feature_first/src/features/navigation_screen/navigation_controller.dart';
import 'package:feature_first/src/features/navigation_screen/screens.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: NavigationController.i,
        builder: (context, child) {
          return Scaffold(
            body: IndexedStack(
              index: NavigationController.i.currentScreen.index,
              children: Screens.values.map((e) => e.body).toList(),
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: NavigationController.i.currentScreen.index,
                onTap:  (index) => NavigationController.i.changeScreen(index, context),
                items: Screens.values
                    .map((e) =>
                        BottomNavigationBarItem(icon: e.icon, label: e.label))
                    .toList()),
          );
        });
  }
}
