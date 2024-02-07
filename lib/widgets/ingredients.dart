import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/app-container.dart';
import 'package:foodrecipe/models/ingredient.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({super.key, required this.ingredients});

  final List<Ingredient> ingredients;

  get totalIngredients {
    var ingredientsCount = ingredients.length;

    return ingredientsCount > 1
        ? '$ingredientsCount items'
        : '$ingredientsCount item';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 0,
          child: AppContainer(
              top: 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ingredients',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text(
                    totalIngredients,
                    style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 14.0),
                  )
                ],
              )),
        ),
        Expanded(
            flex: 0,
            child: AppContainer(
              top: 15.0,
              child: Column(
                children: ingredients
                    .map((ingredient) => IngredientItem(
                        name: ingredient.name,
                        image: ingredient.image,
                        quantity: ingredient.quantity))
                    .toList(),
              ),
            ))
      ],
    );
  }
}

class IngredientItem extends StatelessWidget {
  const IngredientItem(
      {super.key,
      required this.image,
      required this.name,
      required this.quantity});

  final String image;
  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IngredientImage(src: image),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
          Text(quantity,
              style: TextStyle(
                  fontSize: 12.0, color: Theme.of(context).primaryColorLight))
        ],
      ),
    );
  }
}

class IngredientImage extends StatelessWidget {
  const IngredientImage({super.key, required this.src});

  final String src;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        src,
        width: 26.0,
        height: 26.0,
      ),
    );
  }
}
