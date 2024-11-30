import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/business_model/cubit/food_recipe_cubit.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/presentations/widgets/customize_letters_widget.dart';
import 'package:food_recipe/presentations/widgets/meals_item.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
late List<dynamic> allMeals;
@override
  void initState() {
  super.initState();
    allMeals = BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe();

  }
  Widget buildBlocWidget(){
    return BlocBuilder<FoodRecipeCubit,FoodRecipeState>(
      builder:(context,state) {
      if (state is FoodRecipeLoaded) {
        allMeals = (state).meals;
       return buildLoadedListWidget();
      }else{
          return showLoadingIndicator() ;
      }
    } );
  }
  Widget showLoadingIndicator(){
    return Center(
      child: CircularProgressIndicator(
        color: MyColors.myGreen,
      ),
    );
  }

  Widget buildLoadedListWidget(){
return SingleChildScrollView(
  child: Container(
    color: MyColors.myWhite,
    child: Column(
      children: [
        buildMealsList()
      ],
    ),
  ),
);
  }

  Widget buildMealsList(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1 ,
      childAspectRatio: 2/3,
      crossAxisSpacing: 8 ,
      mainAxisSpacing: 8,

      ),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: allMeals.length,
       itemBuilder: (ctx,index){
         return MealsItem(meals: allMeals[index],);
       });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome"),backgroundColor: MyColors.myGreen,),
      body:SingleChildScrollView(
        child: Container(width: double.infinity,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.2,
                width: double.infinity,
                color: MyColors.myWhite,
                child: customiseLetter(context),

              ),
              buildBlocWidget()
            ],
          ),
        ),
      )
    );
  }
}