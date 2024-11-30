import 'package:flutter/material.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/data/web_srevice/food_recipe_web_service.dart';
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
                FoodRecipeWebService('a');
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "B", onPressed: () {
                FoodRecipeWebService("b");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "C", onPressed: () {
                FoodRecipeWebService("c");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "D", onPressed: () {
                FoodRecipeWebService("d");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "E", onPressed: () {
                FoodRecipeWebService("e");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "F", onPressed: () {
                FoodRecipeWebService("f");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "G", onPressed: () {
                FoodRecipeWebService("g");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "H", onPressed: () {
                FoodRecipeWebService("h");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "I", onPressed: () {
                FoodRecipeWebService("i");
              }),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              child: GenericFlexibleButton(text: "J", onPressed: () {
                FoodRecipeWebService("j");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "K", onPressed: () {
                FoodRecipeWebService("k");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "L", onPressed: () {
                FoodRecipeWebService("l");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "M", onPressed: () {
                FoodRecipeWebService("m");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "N", onPressed: () {
                FoodRecipeWebService("n");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "O", onPressed: () {
                FoodRecipeWebService("o");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "P", onPressed: () {
                FoodRecipeWebService("p");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Q", onPressed: () {
                FoodRecipeWebService("q");
              }),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "R", onPressed: () {
                FoodRecipeWebService("r");
              }),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              child: GenericFlexibleButton(text: "S", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "T", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "U", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "V", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "W", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "X", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Y", onPressed: () {}),
            ),
            Flexible(
              child: GenericFlexibleButton(text: "Z", onPressed: () {}),
            ),
          ],
        ),
      ],
    ),
  );
}
