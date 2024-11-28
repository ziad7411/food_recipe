import 'package:flutter/material.dart';
import 'package:food_recipe/app_router.dart';

void main() {
  runApp( FoodRecipeApp(appRouter: AppRouter(),));
}

class FoodRecipeApp extends StatelessWidget {

const FoodRecipeApp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
     
    );
  }
}
