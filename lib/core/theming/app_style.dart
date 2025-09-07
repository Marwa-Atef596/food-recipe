import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/core/theming/color_app.dart';
import 'package:food_recipe/core/theming/font_weight_helper.dart';

class AppStyles {
  static TextStyle font14DarkRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorApp.maindark,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24Darkbold = TextStyle(
    fontSize: 24.sp,
    color: ColorApp.maindark,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18Darkbold = TextStyle(
    fontSize: 18.sp,
    color: ColorApp.maindark,
    fontWeight: FontWeightHelper.bold,
  );
}
