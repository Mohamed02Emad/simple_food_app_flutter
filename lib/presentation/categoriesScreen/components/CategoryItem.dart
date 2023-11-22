import 'package:flutter/material.dart';
import 'package:simple_food_app/data/models/Category.dart';
import 'package:simple_food_app/presentation/mealScreen/MealScreen.dart';

class CategoryItem extends StatelessWidget {
  final String _title;
  final Color _color;

  const CategoryItem(this._title, this._color, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return  MealScreen(category: Category(id: "23" , title: _title , color: _color),);
            },
          ),
        );
      },
      splashColor: Colors.blueGrey,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.70),
              _color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(_title),
      ),
    );
  }
}
