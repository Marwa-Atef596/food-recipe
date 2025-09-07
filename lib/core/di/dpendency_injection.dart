import 'package:food_recipe/core/api_services.dart';
import 'package:food_recipe/features/home/data/api/home_service.dart';
import 'package:food_recipe/features/home/data/repo/home_repo.dart';
import 'package:food_recipe/features/home/logic/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetit() async {
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  getIt.registerLazySingleton<HomeService>(() => HomeService(getIt()));
  getIt.registerFactory<HomeRepo>(() => HomeRepo(getIt()));

  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
