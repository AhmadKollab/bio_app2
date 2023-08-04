import 'package:bio_app2/about_screen.dart';
import 'package:bio_app2/bio_screen.dart';
import 'package:bio_app2/core/routes.dart';
import 'package:bio_app2/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true),
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen:(context) => splashScreen(),
        Routes.bioScreen:(context) => BioApp(),
        Routes.aboutScreen:(context) =>AboutScreen()
      },
    );
  }
}

