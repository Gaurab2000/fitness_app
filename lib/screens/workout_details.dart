import 'package:flutter/material.dart';
import 'package:fitness_app/models/workout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitness_app/providers/favorites_provider.dart';
class WorkoutDetailsScreen extends ConsumerWidget {
  const WorkoutDetailsScreen({super.key, required this.workout,});

  final Workout workout;
    
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteWorkouts = ref.watch(favoriteWorkoutsProvider);
    final isFavorite = favoriteWorkouts.contains(workout);
    return Scaffold(
        appBar: AppBar(
          title: Text(workout.title),
          actions: [
            IconButton(
              onPressed: () {
                final wasAdded = 
                ref.read(favoriteWorkoutsProvider.notifier).toggleWorkoutFavoriteStatus(workout);
                 ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(wasAdded ? 'Workout added as a favourite.' : 'Workout removed'),
      ),
    );
              },
              icon:  Icon(isFavorite ? Icons.star : Icons.star_border),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                workout.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 14),
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 14),
              for (final ingredient in workout.ingredients)
                Text(
                  ingredient,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              const SizedBox(height: 24),
              Text(
                'Steps',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 14),
              for (final step in workout.steps)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    step,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
            ],
          ),
        ));
  }
}
