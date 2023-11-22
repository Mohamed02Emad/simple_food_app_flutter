import 'package:flutter/material.dart';
import 'package:simple_food_app/presentation/categoriesScreen/CategoriesScreen.dart';
import 'package:simple_food_app/presentation/commonComponents/bottomNavigation/BottomNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color:  Color.fromARGB(255, 229, 110, 46)
        ) ,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 249),


        fontFamily: "Kanit",
        textTheme: ThemeData.light().textTheme.copyWith(
              bodySmall: const TextStyle(
                color: Colors.green,
              ),
              bodyMedium: const TextStyle(
                color: Colors.black,
              ),
              bodyLarge: const TextStyle(
                color: Colors.deepPurple,
              ),
            ),
        useMaterial3: true,
      ),
      home: const BottomNavigation(),
    );
  }
}
