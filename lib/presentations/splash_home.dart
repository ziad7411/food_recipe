import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/constants/strings.dart';
import 'package:food_recipe/app_router.dart';
import 'package:food_recipe/presentations/screens/recipe_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  final AppRouter appRouter;

  const SplashScreen({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: MyColors.myBlue,
      splashIconSize: 400,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 2),
      curve: Curves.easeInOut,
      centered: true,
      duration: 4000,
      splashTransition: SplashTransition.sizeTransition,
      splash: Column(
        children: [
          Image.asset("assets/images/logo.png"),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Tasty Trails",
              style: TextStyle(
                fontSize: 30,
                color: MyColors.myWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      nextScreen: BlocProvider(
        create: (context) => appRouter.foodRecipeCubit,
        child: const RecipeScreen(),
      ),
    );
  }
}
