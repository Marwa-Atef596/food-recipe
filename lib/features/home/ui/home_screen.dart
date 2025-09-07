import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/core/di/dpendency_injection.dart';
import 'package:food_recipe/core/helper/spacing.dart';
import 'package:food_recipe/core/theming/app_style.dart';
import 'package:food_recipe/features/home/logic/cubit/home_cubit.dart';
import 'package:food_recipe/features/home/ui/widgets/category_list_view.dart';
import 'package:food_recipe/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(40),
              Text(
                'Category',
                style: AppStyles.font18Darkbold,
              ),
              verticalSpace(20),
              BlocProvider(
                create: (context) => getIt<HomeCubit>()..getCategory(),
                child: CategoryListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
