import 'package:flutter/material.dart';
import 'package:fitness_app/models/workout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitness_app/providers/favorites_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WorkoutDetailsScreen extends ConsumerWidget {
  const WorkoutDetailsScreen({super.key, required this.workout,});

  final Workout workout;

 // late final YoutubePlayerController _controller;


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
               icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween<double>(begin: 0.8, end: 1).animate(animation),
                  child: child,
                );
              },
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                key: ValueKey(isFavorite),
              ),
            ),
          )
        ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
               tag: workout.id,
                child: 
                Image.network(
                  workout.imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
               const SizedBox(height: 14),
             Text(
                'Description',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 14),
              for (final description in workout.description)
        
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
            
              const SizedBox(height: 14),
              Text(
                'Equipments',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 14),
              for (final equipments in workout.equipments)
                Text(
                  equipments,
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
                const SizedBox(height: 14),
              Text(
                'Video Tutorial',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                
                controller: YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(workout.vidurl)!,
 flags: const YoutubePlayerFlags(
  autoPlay: false,
 )),
              showVideoProgressIndicator: true,
              onReady: () => debugPrint('Ready'),
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                )
              ]
                
                ),
            )
            ],
            
            )

            ,
          ),
        );
  }
}
