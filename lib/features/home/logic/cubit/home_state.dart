import 'package:food_recipe/features/home/data/model/meal_model.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSucess extends HomeState {
  final List<MealModel> meals;

  HomeSucess(this.meals);
}

final class HomeFailure extends HomeState {
  final String err;

  HomeFailure(this.err);
}
