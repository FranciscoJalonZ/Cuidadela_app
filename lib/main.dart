import 'package:flutter/material.dart';
import 'package:cuidadela_app/home_screen.dart';  

void main() {
  runApp(const CiudadelaApp());
}

class CiudadelaApp extends StatelessWidget {
  const CiudadelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión Ciudadela',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
      ),
      home: HomeScreen(),
    );
  }
}