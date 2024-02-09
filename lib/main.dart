import 'package:flutter/material.dart';
import 'package:foodrecipe/screens/meal-details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE23E3E)),
          useMaterial3: true,
          primaryColor: const Color(0xFFE23E3E),
          primaryColorDark: Colors.black,
          primaryColorLight: const Color(0x80303030),
          cardColor: const Color(0x35A9A9A9),
          fontFamily: 'Poppins',
          fontFamilyFallback: const ['Times New Roman', 'Sanserif']),
      home: const MealDetailsPage(),
    );
  }
}
