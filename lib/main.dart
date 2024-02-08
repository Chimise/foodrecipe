import 'package:flutter/material.dart';
import 'package:foodrecipe/data/ingredients.dart';
import 'package:foodrecipe/widgets/review.dart';
import 'package:foodrecipe/widgets/ingredients.dart';
import 'package:foodrecipe/widgets/navigation.dart';
import 'package:foodrecipe/widgets/meal-info.dart';
import 'package:foodrecipe/widgets/author-info.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [NavigationSection()],
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              // NavigationSection(),
              MealTitle(title: 'How to make french toast'),
              MealImage(imageSrc: 'assets/french_toast.png'),
              ReviewSection(rating: '4,5', reviews: 300),
              AuthorInfo(
                  profilePic: 'assets/user-profile.png',
                  location: 'Bali, Indonesia',
                  name: 'Roberta Anny'),
              IngredientsList(ingredients: dummyIngredients),
            ],
          ),
        ));
  }
}
