import 'package:flutter/material.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/constants/strings.dart';
import 'package:food_recipe/data/models/meals.dart';

class MealsItem extends StatelessWidget {
  final Meals meals;
  const MealsItem({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,strokeAlign: BorderSide.strokeAlignOutside),
        color: MyColors.myDarkGray,
        borderRadius: BorderRadius.circular(6),
        
      ),
      child:InkWell(
        onTap: ()=> Navigator.pushNamed(context,recipeDetailsScreen,arguments: meals),
        child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: MyColors.myWhite,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  " ${meals.strMeal}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: MyColors.myDarkGray,
                      height: 2,
                      fontWeight: FontWeight.bold,),
                ),
                Text(
                  "Category : ${meals.strCategory}",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16, color: MyColors.myDarkGray, height: 1.5),
                ),
                Text(
                  "Country : ${meals.strArea}",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16, color: MyColors.myDarkGray, height: 1.5,),
                ),
                /*Text(
                  "Instruction : ${meals.strInstructions}",
                  style: TextStyle(
                      fontSize: 14,
                      color: MyColors.myBlack,
                      height: 1.3,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.visible,
                  maxLines: 6,
                  textAlign: TextAlign.start,
                ),*/
              /*  Text(
                  "Youtube : ${meals.strYoutube}",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      height: 1.5,
                      fontWeight: FontWeight.normal),
                ),*/
              ],
            ),
          ),
          child: Hero(tag: meals.idMeal,
            child: Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.15,top: MediaQuery.of(context).size.height*.001),
              color: MyColors.myWhite,
              child: meals.image.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/images/loading.gif',
                      image: meals.image,
                      fit: BoxFit.fitWidth,
                      
                    )
                  : Image.asset('assets/images/searchbg.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
