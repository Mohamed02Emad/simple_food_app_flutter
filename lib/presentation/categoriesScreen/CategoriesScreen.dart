import 'package:flutter/material.dart';
import 'package:simple_food_app/data/providers/FakeDataProvider.dart';

import 'components/CategoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        children: [
          ...FakeDataProvider.getFakeCategories()
              .map(
                (category) => Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: CategoryItem(category.title, category.color),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
