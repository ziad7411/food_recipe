import 'package:dio/dio.dart';
import 'package:food_recipe/constants/strings.dart';

class FoodRecipeWebService {
  late Dio dio;

  FoodRecipeWebService(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 1000),
      receiveTimeout: Duration(seconds: 1000),
    );
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllRecipe() async{
    try {
      Response response = await dio.get("search.php?f=a&apiKey=$apiKey");
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return[];
      
    }
  }
}