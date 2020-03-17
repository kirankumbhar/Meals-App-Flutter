import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favMeals;

  FavoriteScreen(this.favMeals);

  @override
  Widget build(BuildContext context) {
    if (favMeals.isEmpty) {
      return Center(
        child: Text('You have no Favorites yet!'),
      );
    }

    return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favMeals[index].id,
            title: favMeals[index].title,
            imageUrl: favMeals[index].imageUrl,
            duration: favMeals[index].duration,
            complexity: favMeals[index].complexity,
            affordability: favMeals[index].affordability,
          );
        },
        itemCount: favMeals.length,
      );
  }
}
