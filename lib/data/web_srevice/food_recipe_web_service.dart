import 'package:dio/dio.dart';
import 'package:food_recipe/constants/strings.dart';
import 'package:logger/logger.dart';

class FoodRecipeWebService {
  late Dio dio;
  final logger = Logger();


  FoodRecipeWebService(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 1000),
      receiveTimeout: Duration(seconds: 1000),
    );
    dio = Dio(options);
  }
  Future<Map<String?, dynamic>> getAllRecipe(String letter) async{
    try {
      Response response = await dio.get("search.php?f=$letter&apiKey=$apiKey");
      dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
     // logger.d("Debug log in release mode");
      return response.data;
    } catch (e) {
      print(e.toString());
      return Map<String?, dynamic>();
      
    }
  }
}