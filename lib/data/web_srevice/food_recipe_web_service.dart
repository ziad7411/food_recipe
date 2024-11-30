import 'package:dio/dio.dart';
import 'package:food_recipe/constants/strings.dart';

class FoodRecipeWebService {
  late Dio dio;
  String firstChar = "a";
  FoodRecipeWebService(this.firstChar){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 1000),
      receiveTimeout: Duration(seconds: 1000),
    );
    dio = Dio(options);
  }
  Future<Map<String?, dynamic>> getAllRecipe() async{
    try {
      Response response = await dio.get("search.php?f=$firstChar&apiKey=$apiKey");
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return Map<String?, dynamic>();
      
    }
  }
}