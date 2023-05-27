import 'package:fitness_app/providers/workouts_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false
        });

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; // not allowed! => mutating state
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);
final filteredWorkoutsProvider = Provider((ref) {
  final Workouts = ref.watch(workoutsProvider);
  final activeFilters = ref.watch(filtersProvider);

  return Workouts.where((workout) {
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
});