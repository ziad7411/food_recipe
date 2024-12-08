
class Meals {
  late String strMeal;
  late String strCategory;
  late String strArea;
  late String strInstructions;
  late String image;
  late String strTags;
  late String strYoutube;
  late String idMeal;

Meals.fromJson(Map<String, dynamic> json) {
    strMeal = json["strMeal"] ?? "Unknown Meal";
    strCategory = json["strCategory"] ?? "Unknown Category";
    strArea = json["strArea"] ?? "Unknown Area";
    strInstructions = json["strInstructions"] ?? "No Instructions Available";
    image = json["strMealThumb"] ?? "";
    strTags = json["strTags"] ?? "No Tags";
    strYoutube = json["strYoutube"] ?? "No YouTube Link";
    idMeal = json["idMeal"] ?? "No ID Link";
  }



}