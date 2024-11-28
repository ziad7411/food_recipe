import 'package:food_recipe/data/models/meals.dart';
import 'package:food_recipe/data/web_srevice/food_recipe_web_service.dart';

class FoodRecipeRepositery {
  final FoodRecipeWebService foodRecipeWebService;

  FoodRecipeRepositery(this.foodRecipeWebService);

  Future<List<Meals>> getAllRecipe() async{
    final foodRecipe = await foodRecipeWebService.getAllRecipe();
    return foodRecipe.map((foodRecipe) => Meals.fromJson(foodRecipe)).toList();
    

  
  }
}