import 'package:bloc/bloc.dart';
import 'package:food_recipe/data/models/meals.dart';
import 'package:food_recipe/data/repositries/food_recipe_repositery.dart';
import 'package:meta/meta.dart';

part 'food_recipe_state.dart';

class FoodRecipeCubit extends Cubit<FoodRecipeState> {
  final FoodRecipeRepositery foodRecipeRepositery;

   List<Meals> meals = [];
  FoodRecipeCubit(this.foodRecipeRepositery) : super(FoodRecipeInitial());

  
  List<dynamic> getAllRecipe(String letter) {
    foodRecipeRepositery.getAllRecipe(letter).then((meals) {
      emit(FoodRecipeLoaded(meals));
      this.meals = meals;
    });
    return meals;
  }
}
