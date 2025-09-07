import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/core/theming/color_app.dart';
import 'package:food_recipe/features/home/logic/cubit/home_cubit.dart';
import 'package:food_recipe/features/home/logic/cubit/home_state.dart';
import 'package:food_recipe/features/home/ui/widgets/category_Item.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    super.key,
  });

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(
                child: CircularProgressIndicator(
              color: ColorApp.cyen,
            ));
          } else if (state is HomeFailure) {
            return Text('error');
          } else if (state is HomeCategorySuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.categories.length,
              itemBuilder: (BuildContext context, int index) {
                final category = state.categories[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: CategoryItem(
                        category: category,
                        isSelected: selectedIndex == index,
                      )),
                );
              },
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
