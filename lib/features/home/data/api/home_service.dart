import 'package:food_recipe/core/api_services.dart';
import 'package:food_recipe/features/home/data/model/meal_model.dart';

class HomeService {
  final ApiService _apiService;

  HomeService(this._apiService);

  Future<List<MealModel>> getRecipe() async {
    final response =
        await _apiService.get('search.php', queryParameters: {'f': 'b'});
    final meals = (response.data['meals'] as List)
        .map((meal) => MealModel.fromJson(meal))
        .toList();
    return meals;
  }
}
