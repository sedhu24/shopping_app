import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/features/splashscreen/splashscreen.dart';
import 'package:shopping_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodduke',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const SplashScreen(),
    );
  }
}
