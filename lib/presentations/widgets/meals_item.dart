import 'package:flutter/material.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/data/models/meals.dart';

class MealsItem extends StatelessWidget {

  final Meals meals;
  const MealsItem({super.key , required this.meals} );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(child:Container(
        color: MyColors.myWhite,
        child: meals.image.isNotEmpty ?
        FadeInImage.assetNetwork(
          width: double.infinity,
          height: double.infinity,
          placeholder: 'assets/images/loading.gif', image: meals.image,fit: BoxFit.cover,):
          Image.asset('assets/images/searchbg.jpg'),
        
      ),
      footer: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Text("Name : ${meals.strMeal}", style: TextStyle(fontSize: 18,color: MyColors.myGreen,height: 1.5,fontWeight: FontWeight.bold),),
            Text("Category : ${meals.strCategory}",style: TextStyle(fontSize: 12,color: MyColors.myGreen,height: 1),),
            Text("Country : ${meals.strArea}",style: TextStyle(fontSize: 12,color: MyColors.myGreen,height: 1),),
            Text("Instruction : ${meals.strInstructions}",style: TextStyle(fontSize: 14,color: MyColors.myBlack,height: 1.3,fontWeight: FontWeight.bold),overflow: TextOverflow.visible,maxLines: 6,textAlign: TextAlign.start,),
            Text("Youtube : ${meals.strYoutube}",style: TextStyle(fontSize: 18,color: Colors.blue,height: 1.5,fontWeight: FontWeight.normal),),
          ],
        ),
      ),

       ),


    ) ;
  }
}