import 'package:flutter/material.dart';
import 'package:simple_food_app/data/models/Category.dart';
import 'package:simple_food_app/data/providers/FakeDataProvider.dart';
import 'package:simple_food_app/presentation/mealScreen/components/MealItem.dart';

class MealScreen extends StatelessWidget {
  final Category category;

  const MealScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    var list = FakeDataProvider.generateMeals()
        .where((element) => element.title.contains(category.title[0]))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(meal: list[index]);
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
