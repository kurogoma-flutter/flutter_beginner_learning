import 'package:flutter/material.dart';
import 'package:flutter_beginner_learning/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Beginner',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.white,
        highlightColor: Colors.white,
        splashColor: Colors.white,
        fontFamily: 'Yusei_Magic',
      ),
    );
  }
}
