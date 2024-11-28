part of 'food_recipe_cubit.dart';

@immutable
sealed class FoodRecipeState {}

final class FoodRecipeInitial extends FoodRecipeState {}

class FoodRecipeLoaded extends FoodRecipeState{
  final List<Meals> meals;

  FoodRecipeLoaded(this.meals);

}
