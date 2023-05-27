import 'package:fitness_app/models/workout.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/models/category.dart';
import 'package:fitness_app/data/dummy_data.dart';
import 'package:fitness_app/widgets/category_grid_item.dart';
import 'package:fitness_app/screens/workouts.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key,required this.availableWorkouts,});

  final List<Workout> availableWorkouts;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>  with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  @override
  void initState() {

    super.initState();
    _animationController = AnimationController(vsync: this,
    duration: const Duration(milliseconds: 300),
    lowerBound: 0,
    upperBound: 1);
    _animationController.forward();
  }

  @override
  void dispose() {
     _animationController.dispose();
    super.dispose();
  }
void _selectCategory(BuildContext context, Category category,) {

  final filteredWorkouts = widget.availableWorkouts
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
    return  AnimatedBuilder(animation: _animationController,
    child:GridView(
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
     builder: (context, child) => Padding(padding: EdgeInsets.only(top:100 -_animationController.value * 100)  , child : child))  ;
  }
}