import 'package:flutter/material.dart';

class HomeController extends InheritedWidget {
  final isDrawerOpen = ValueNotifier(false);

  HomeController({required super.child, super.key});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }
}
