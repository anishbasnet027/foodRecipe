import 'package:flutter/material.dart';
import 'package:flutter_application_1/category_item.dart';
import 'package:flutter_application_1/dummy_data.dart';
import 'meal.dart';

class thakali extends StatelessWidget {
  final String food_categoryID;
  final String food_title;

  thakali(this.food_categoryID, this.food_title) {}

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(food_categoryID);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(food_title),
        backgroundColor: Colors.pinkAccent.shade400,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Scaffold();
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
