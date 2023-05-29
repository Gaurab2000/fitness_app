import 'package:fitness_app/providers/workouts_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  fatloss,
  musclegain,
  noequipments,
  gymmachine,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.fatloss: false,
          Filter.musclegain: false,
          Filter.noequipments: false,
          Filter.gymmachine: false
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
    if (activeFilters[Filter.fatloss]! && !workout.isfatloss) {
      return false;
    }
    if (activeFilters[Filter.musclegain]! && !workout.ismusclegain) {
      return false;
    }
    if (activeFilters[Filter.noequipments]! && !workout.isnoequipments) {
      return false;
    }
    if (activeFilters[Filter.gymmachine]! && !workout.isgymmachine) {
      return false;
    }
    return true;
  }).toList();
});