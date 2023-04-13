import 'package:flutter/material.dart';

import './recipe_screen.dart';
import './recipe_class.dart';

class RecipesList extends StatelessWidget {
  final List<Recipe> recipesList = [
    Recipe(
        recipeName: 'Butter Chicken',
        recipeDescription: 'Description for Recipe 1',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 2',
        recipeDescription: 'Description for Recipe 2',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 3',
        recipeDescription: 'Description for Recipe 3',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 4',
        recipeDescription: 'Description for Recipe 4',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 5',
        recipeDescription: 'Description for Recipe 5',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 6',
        recipeDescription: 'Description for Recipe 6',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 7',
        recipeDescription: 'Description for Recipe 7',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 8',
        recipeDescription: 'Description for Recipe 8',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 9',
        recipeDescription: 'Description for Recipe 9',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
    Recipe(
        recipeName: 'Recipe 10',
        recipeDescription: 'Description for Recipe 10',
        recipeRating: 4,
        recipeSteps: [
          'Cook spaghetti according to package directions.',
          'Fry bacon until crispy, then remove from the pan and crumble it.',
          'Whisk together eggs, cream, salt, and pepper.',
          'Add cooked spaghetti to the bacon fat in the pan and toss to coat.',
          'Add the egg mixture to the spaghetti and toss quickly to coat evenly.',
          'Sprinkle with parmesan cheese and serve immediately.'
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: recipesList.length,
      itemBuilder: (BuildContext context, int index) {
        Recipe recipe = recipesList[index];
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: Colors.yellow[300], // set the card background color
          child: ListTile(
            title: Text(recipe.recipeName),
            subtitle: Text(recipe.recipeDescription),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeScreen(recipe),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
