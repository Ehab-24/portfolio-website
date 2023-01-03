import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/home/home_screen.dart';
import 'package:protfolio_website/presentation/router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ehab Sohail',
      initialRoute: '/',
      onGenerateRoute: MRouter.onGenerateRoute,
      home: HomeScreen(),
    );
  }
}