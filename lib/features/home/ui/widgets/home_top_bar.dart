import 'package:flutter/material.dart';
import 'package:food_recipe/core/helper/spacing.dart';
import 'package:food_recipe/core/theming/app_style.dart';
import 'package:food_recipe/core/theming/color_app.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.wb_sunny_outlined,
              color: ColorApp.cyen,
            ),
            horizontalSpace(5),
            Text(
              'Good Morning',
              style: AppStyles.font14DarkRegular,
            ),
            Spacer(),
            Icon(Icons.shopping_cart),
          ],
        ),
        Text(
          'Alena Sabyan',
          style: AppStyles.font24Darkbold,
        ),
      ],
    );
  }
}
