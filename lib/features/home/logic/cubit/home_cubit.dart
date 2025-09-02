// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:food_recipe/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeInitial());

  final HomeRepo _homeRepo;

  Future<void> getMeals() async {
    emit(HomeLoading());

    final result = await _homeRepo.getRecipe();
    result.fold(
      (failure) {
        print("Repo error: ${failure.message}");
        emit(HomeFailure(failure.message));
      },
      (meals) {
        print("Meals fetched successfully: ${meals.length} items");
        for (var m in meals) {
          print(m.name);
        }
        emit(HomeSucess(meals));
      },
    );
  }
}
