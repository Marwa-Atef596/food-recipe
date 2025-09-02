import 'package:dartz/dartz.dart';
import 'package:food_recipe/features/home/data/api/home_service.dart';

import '../../../../core/failure.dart';
import '../model/meal_model.dart';

class HomeRepo {
  final HomeService _homeService;

  HomeRepo(this._homeService);

  Future<Either<Failure, List<MealModel>>> getRecipe() async {
    try {
      final response = await _homeService.getRecipe();
      return Right(response);
    } catch (e) {
      return Left(Failure("Error fetching meals: $e"));
    }
  }
}
