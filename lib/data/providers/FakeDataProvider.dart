
import 'dart:math';

import 'package:flutter/material.dart';

import '../models/Category.dart';
import '../models/Meal.dart';

class FakeDataProvider {

  static List<Category> getFakeCategories() {
    List<String> foodTitles = [
      'Pizza',
      'Burger',
      'Sushi',
      'Pasta',
      'Salad',
      'Taco',
      'Steak',
      'Ramen',
      'Sandwich',
      'Curry',
      'Noodles',
      'Fries',
      'Soup',
      'Chicken',
      'Pancake',
      'Waffle',
      'Donut',
      'Ice Cream',
      'Cake',
      'Pie',
    ];

    List<Category> fakeCategories = [];


    for (int i = 0; i < 20; i++) {
      String randomTitle = foodTitles[i % foodTitles.length]; // Cycling through foodTitles
      Color randomColor = Colors.primaries[i % Colors.primaries.length]; // Randomly picking colors
      fakeCategories.add(
        Category(
          id: 'category_$i',
          title: randomTitle,
          color: randomColor,
        ),
      );
    }

    return fakeCategories;
  }


  static List<Meal> generateMeals() {
    List<Meal> meals = [];

    Random random = Random();

    List<String> categories = ['Italian', 'Chinese', 'Indian', 'American'];
    List<String> titles = [
      'Pasta Carbonara',
      'Kung Pao Chicken',
      'Chicken Tikka Masala',
      'Burger and Fries',
      'Vegetable Stir-Fry',
      'Lasagna',
      'Sushi Rolls',
      'Steak with Veggies'
      // Add more meal titles as needed...
    ];

    for (int i = 0; i < 60; i++) {
      List<String> randomCategories = [];
      for (int j = 0; j < 2; j++) {
        randomCategories.add(categories[random.nextInt(categories.length)]);
      }

      List<String> randomIngredients = [];
      for (int j = 0; j < 5; j++) {
        randomIngredients.add('Ingredient ${j + 1}');
      }

      List<String> randomSteps = [];
      for (int j = 0; j < 3; j++) {
        randomSteps.add('Step ${j + 1}');
      }

      var imgrl = "";
      if(random.nextBool()){
        imgrl =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1599px-Good_Food_Display_-_NCI_Visuals_Online.jpg';

      }else{
      imgrl = "https://www.cnet.com/a/img/resize/36e8e8fe542ad9af413eb03f3fbd1d0e2322f0b2/hub/2023/02/03/afedd3ee-671d-4189-bf39-4f312248fb27/gettyimages-1042132904.jpg?auto=webp&fit=crop&height=1200&width=1200";
      }
      meals.add(Meal(
        id: 'meal_$i',
        categories: randomCategories,
        title: titles[random.nextInt(titles.length)],
        imageUrl: imgrl,
        ingredients: randomIngredients,
        steps: randomSteps,
        duration: random.nextInt(60) + 30, // Random duration between 30 to 90 minutes
        complexity: Complexity.values[random.nextInt(3)],
        affordability: Affordability.values[random.nextInt(3)],
        isGlutenFree: random.nextBool(),
        isLactoseFree: random.nextBool(),
        isVegan: random.nextBool(),
        isVegetarian: random.nextBool(),
      ));
    }

    return meals;
  }
}