import 'package:flutter/material.dart';
import '../../data/models/Meal.dart';

class DetailsScreen extends StatelessWidget {
  final Meal meal;

  const DetailsScreen({required this.meal, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "Ingredients",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    margin: const EdgeInsets.all(4),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12 , right: 12,),
                      child: Text(
                        meal.ingredients[index],
                      ),
                    ),
                  );
                },
                itemCount: meal.ingredients.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "Steps",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    margin: EdgeInsets.all(4),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12 , right: 12,),
                      child: Text(
                        meal.steps[index],
                      ),
                    ),
                  );
                },
                itemCount: meal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.deepOrangeAccent,
        child: const Icon(Icons.star), // Change the background color if needed
      ),
    );
  }

}
