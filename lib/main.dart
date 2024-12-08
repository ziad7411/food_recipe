import 'package:flutter/material.dart';
import 'package:food_recipe/app_router.dart';
import 'package:food_recipe/presentations/splash_home.dart';

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
      home: SplashScreen(appRouter: appRouter),
     
    );
  }
}
