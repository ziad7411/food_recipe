import 'package:flutter/material.dart';
import 'package:food_recipe/business_model/cubit/food_recipe_cubit.dart';
import 'package:food_recipe/constants/strings.dart';
import 'package:food_recipe/data/models/meals.dart';
import 'package:food_recipe/data/repositries/food_recipe_repositery.dart';
import 'package:food_recipe/data/web_srevice/food_recipe_web_service.dart';
import 'package:food_recipe/presentations/screens/recipe_details_screen.dart';
import 'package:food_recipe/presentations/screens/recipe_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late FoodRecipeRepositery foodRecipeRepositery;
  late FoodRecipeCubit foodRecipeCubit;

AppRouter(){
foodRecipeRepositery  = FoodRecipeRepositery(FoodRecipeWebService());
foodRecipeCubit = FoodRecipeCubit(foodRecipeRepositery);

}

Route? generateRoute(RouteSettings settings){
  switch (settings.name) {
    case foodSecipeScreen:
    return MaterialPageRoute(builder: (_) => BlocProvider(
      create: (context) => foodRecipeCubit,
      child: const RecipeScreen(),
    )
    );

    case recipeDetailsScreen :
    final meals =settings.arguments as Meals;
    return MaterialPageRoute(builder: (_)=> RecipeDetailsScreen(meals: meals,));
  }
  return null;
  

}


}