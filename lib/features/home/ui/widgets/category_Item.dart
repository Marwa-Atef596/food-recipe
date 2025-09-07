// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/core/theming/app_style.dart';
import 'package:food_recipe/core/theming/color_app.dart';
import 'package:food_recipe/features/home/data/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.isSelected,
    required this.category,
  });
  final bool isSelected;
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      width: 90.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: isSelected ? ColorApp.cyen : ColorApp.containerbg,
      ),
      child: Text(
        category.name,
        style: AppStyles.font14DarkRegular.copyWith(
            color: isSelected ? ColorApp.containerbg : ColorApp.maindark),
      ),
    );
  }
}
