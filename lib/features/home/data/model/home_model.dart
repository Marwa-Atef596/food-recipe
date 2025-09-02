import 'package:food_recipe/features/home/data/model/meal_model.dart';

class HomeModel {
  final List<MealModel> meals;

  HomeModel({required this.meals});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    final mealsJson = json['meals'] as List?;
    if (mealsJson == null) {
      return HomeModel(meals: []);
    }
    return HomeModel(
      meals: mealsJson.map((meal) => MealModel.fromJson(meal)).toList(),
    );
  }
}
