import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'package:fitness_app/screens/categories.dart';
import 'package:fitness_app/screens/filters.dart';
import 'package:fitness_app/screens/workouts.dart';
import 'package:fitness_app/widgets/main_drawer.dart';
import 'package:fitness_app/providers/workouts_provider.dart';
import 'package:fitness_app/providers/favorites_provider.dart';
import 'package:fitness_app/providers/filters_provider.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
 

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
    await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FiltersScreen(),
        ),
      );

      
    }
  }

  @override
  Widget build(BuildContext context) {
    final workouts = ref.watch(workoutsProvider);
    final activeFilters = ref.watch(filtersProvider);
    final availableWorkouts = workouts.where((workout) {
      if (activeFilters[Filter.glutenFree]! && !workout.isGlutenFree) {
        return false;
      }
      if (activeFilters[Filter.lactoseFree]! && !workout.isLactoseFree) {
        return false;
      }
      if (activeFilters[Filter.vegetarian]! && !workout.isVegetarian) {
        return false;
      }
      if (activeFilters[Filter.vegan]! && !workout.isVegan) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      availableWorkouts: availableWorkouts,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      final favoriteWorkouts = ref.watch(favoriteWorkoutsProvider);
      activePage = WorkoutsScreen(
        workouts: favoriteWorkouts,
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
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