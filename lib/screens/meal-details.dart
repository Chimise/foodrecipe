import 'package:flutter/material.dart';
import 'package:foodrecipe/data/ingredients.dart';
import 'package:foodrecipe/widgets/review.dart';
import 'package:foodrecipe/widgets/ingredients.dart';
import 'package:foodrecipe/widgets/navigation.dart';
import 'package:foodrecipe/widgets/meal-info.dart';
import 'package:foodrecipe/widgets/author-info.dart';

class MealDetailsPage extends StatelessWidget {
  const MealDetailsPage({super.key});

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
