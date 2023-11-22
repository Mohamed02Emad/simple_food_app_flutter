import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/providers/FakeDataProvider.dart';
import '../mealScreen/components/MealItem.dart';

class FavouriteScreen extends StatelessWidget {

  const FavouriteScreen({ super.key});

  @override
  Widget build(BuildContext context) {

    var items = List.from(FakeDataProvider.generateMeals())..shuffle(Random());

    var list = items.take(8).toList();


    return Scaffold(
      body: Center(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(meal: list[index]);
            },
            itemCount: list.length,
          )),
    );

  }
}
