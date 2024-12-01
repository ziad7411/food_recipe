import 'package:food_recipe/data/models/meals.dart';
import 'package:food_recipe/data/web_srevice/food_recipe_web_service.dart';

class FoodRecipeRepositery {
  final FoodRecipeWebService foodRecipeWebService;

  FoodRecipeRepositery(this.foodRecipeWebService);
Future<List<Meals>> getAllRecipe(String letter) async {
  final foodRecipe = await foodRecipeWebService.getAllRecipe(letter);
  if (foodRecipe["meals"] != null) {
    List<dynamic> mealsData = foodRecipe["meals"] as List<dynamic>;
    return mealsData.map((meal) => Meals.fromJson(meal as Map<String, dynamic>)).toList();
  } else {
    return [];
  }
}

}

