
class Meals {
  late String strMeal;
  late String strCategory;
  late String strArea;
  late String strInstructions;
  late String image;
  late String strTags;
  late String strYoutube;

Meals.fromJson(Map <String,dynamic> json){
  strMeal = json["strMeal"];
  strCategory = json["strCategory"];
  strArea = json["strArea"];
  strInstructions = json["strInstructions"];
  image = json["strMealThumb"];
  strTags = json["strTags"];
  strYoutube = json["strYoutube"];

}

}