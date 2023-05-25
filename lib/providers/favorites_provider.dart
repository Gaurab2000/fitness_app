import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitness_app/models/workout.dart';

class FavoriteWorkoutsNotifier extends StateNotifier<List<Workout>> {
  FavoriteWorkoutsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Workout workout) {
    final workoutIsFavorite = state.contains(workout);

    if (workoutIsFavorite) {
      state = state.where((w) => w.id != workout.id).toList();
      return false;
    } else {
      state = [...state, workout];
      return true;
    }
  }
}

final favoriteWorkoutsProvider =
    StateNotifierProvider<FavoriteWorkoutsNotifier, List<Workout>>((ref) {
  return FavoriteWorkoutsNotifier();
});