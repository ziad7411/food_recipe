import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/business_model/cubit/food_recipe_cubit.dart';
import 'package:food_recipe/presentations/widgets/geniric_flexable_button.dart';

Widget customiseLetter(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.2,
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        Row(
          children: [
            Flexible(
              child: GenericFlexibleButton(text: "A", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("a");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "B", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("b");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "C", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("c");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "D", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("d");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "E", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("e");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "F", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("f");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "G", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("g");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "H", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("h");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "I", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("i");
              }),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              child: GenericFlexibleButton(text: "J", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("j");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "K", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("k");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "L", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("l");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "M", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("m");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "N", onPressed: () {
               BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("n");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "O", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("o");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "P", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("p");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Q", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("q");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "R", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("r");
              }),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              child: GenericFlexibleButton(text: "S", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("s");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "T", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("t");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "U", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("u");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "V", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("v");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "W",onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("w");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "X", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("x");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Y", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("y");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Z", onPressed: () {
                BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("z");
              }),
            ),
          ],
        ),
      ],
    ),
  );
}
