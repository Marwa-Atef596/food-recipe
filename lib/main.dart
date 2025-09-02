import 'package:flutter/material.dart';

void main() {
  runApp(const FoodRecipe());
}

class FoodRecipe extends StatelessWidget {
  const FoodRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
