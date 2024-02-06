import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/review.dart';
import 'widgets/navigation.dart';
import 'widgets/ingredient-info.dart';
import 'widgets/author-info.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
              IngredientTitle(title: 'How to make french toast'),
              IngredientImage(imageSrc: 'assets/french_toast.png'),
              ReviewSection(rating: '4,5', reviews: 300),
              AuthorInfo(
                  profilePic: 'assets/user-profile.png',
                  location: 'Bali, Indonesia',
                  name: 'Roberta Anny')
            ],
          ),
        ));
  }
}
