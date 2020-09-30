import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart'; 

class FavoriteScreen extends StatelessWidget {
  final List<Meal> FavouriteMeals;

  FavoriteScreen(this.FavouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (FavouriteMeals.isEmpty) {
      return Center(
        child: Text(
          'You dont have any favorites , try adding some !',
        ),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: FavouriteMeals[index].id,
            title: FavouriteMeals[index].title,
            imageUrl: FavouriteMeals[index].imageUrl,
            affordability: FavouriteMeals[index].affordability,
            duration: FavouriteMeals[index].duration,
            complexity: FavouriteMeals[index].complexity,
          );
        },
        itemCount: FavouriteMeals.length,
      );
    }
  }
}
