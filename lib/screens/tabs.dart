import 'package:flutter/material.dart';
import 'package:fitness_app/models/workout.dart';
import 'package:fitness_app/screens/categories.dart';
import 'package:fitness_app/screens/workouts.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Workout> _favoriteWorkouts = [];

  void _toggleWorkoutFavoriteStatus(Workout workout) {
    final isExisting = _favoriteWorkouts.contains(workout);

    if (isExisting) {
      _favoriteWorkouts.remove(workout);
    } else {
      _favoriteWorkouts.add(workout);
    }
  }

  
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =  CategoriesScreen(onToggleFavorite:_toggleWorkoutFavoriteStatus,);
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage =  WorkoutsScreen(workouts: [],onToggleFavorite:_toggleWorkoutFavoriteStatus,);
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}