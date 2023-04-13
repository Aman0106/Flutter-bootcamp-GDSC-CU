import 'package:flutter/material.dart';

import './recipe_class.dart';

class RecipeScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeScreen(this.recipe);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.recipeName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              recipe.recipeImage!,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text(recipe.recipeRating.toStringAsFixed(1)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(recipe.recipeDescription),
            ),
            Divider(),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: recipe.recipeSteps.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(child: Text((index + 1).toString())),
                  title: Text(recipe.recipeSteps[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
