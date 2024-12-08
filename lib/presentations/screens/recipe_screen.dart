import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/business_model/cubit/food_recipe_cubit.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/presentations/widgets/customise_letters_widget.dart';
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
  BlocProvider.of<FoodRecipeCubit>(context).getAllRecipe("a");

  }
  Widget buildBlocWidget(){
    return BlocBuilder<FoodRecipeCubit,FoodRecipeState>(
      builder:(context,state) {
      if (state is FoodRecipeLoaded) {
        allMeals = (state).meals;
        if (allMeals.isEmpty) {
          return Container(margin: EdgeInsets.fromLTRB(10, 25, 10, 10), child:  Text("Don't have Any Meals Recipe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),));
        }
       return buildLoadedListWidget();
      }else{
          return showLoadingIndicator() ;
      }
    } );
  }
  Widget showLoadingIndicator(){
    return Center(
      child: CircularProgressIndicator(
        color: MyColors.myDarkGray,
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
      childAspectRatio: 1,
      crossAxisSpacing: 3 ,
      mainAxisSpacing: 3,

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
      appBar: AppBar(title: Text("Tasty Trails",style: TextStyle(fontSize: 24,color: MyColors.myBlue,fontWeight: FontWeight.bold),),backgroundColor: MyColors.myWhite,),
      body:SingleChildScrollView(
        child: Container(width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 22),
                height: MediaQuery.of(context).size.height*.2,
                width: double.infinity,
                color: MyColors.myWhite,
                child: customiseLetter(context,),

              ),
              buildBlocWidget()
            ],
          ),
        ),
      )
    );
  }
}