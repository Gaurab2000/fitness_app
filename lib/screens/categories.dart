import 'package:flutter/material.dart';
import 'package:fitness_app/models/category.dart';
import 'package:fitness_app/data/dummy_data.dart';
import 'package:fitness_app/widgets/category_grid_item.dart';
import 'package:fitness_app/screens/workouts.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
void _selectCategory(BuildContext context, Category category) {

  final filteredWorkouts = dummyWorkouts
        .where((workout) => workout.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>  WorkoutsScreen(
          title: category.title,
          workouts: filteredWorkouts,
        ),
      ),
    ); // Navigator.push(context, route)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          for (final category in availableCategories)
            CategoryGridItem(category: category,
            onSelectCategory: (){
              _selectCategory(context,category);
            },
              
            )
        ],
      ),
    );
  }
}