class Recipe {
  final String recipeName;
  final String recipeDescription;
  String? recipeImage = 'assets/images/butter_chicken.jpg';
  final double recipeRating;
  final List<String> recipeSteps;

  Recipe({
    required this.recipeName,
    required this.recipeDescription,
    required this.recipeRating,
    required this.recipeSteps,
  });
}
