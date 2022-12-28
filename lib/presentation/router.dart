import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/skills/skills_screen.dart';

import 'home/home_screen.dart';

class MRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return _buildRoute(const HomeScreen());
      case '/skills':
        return _buildRoute(const SkillsScreen());
      default:
        return _errorRoute('Error: Invalid Route.');
    }
  }

  static Route _buildRoute(Widget screen) => PageRouteBuilder(
        pageBuilder: (conetxt, animation, _) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const curve = Curves.easeOutQuint;
          final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        },
      );

  static MaterialPageRoute _errorRoute(String message) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(
              message,
              style: const TextStyle(fontSize: 32),
            ),
          ),
        ),
      );
}
