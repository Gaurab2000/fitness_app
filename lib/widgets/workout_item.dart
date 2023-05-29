import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:fitness_app/widgets/workout_item_trait.dart';
import 'package:fitness_app/models/workout.dart';

class WorkoutItem extends StatelessWidget {
  const WorkoutItem({
    super.key,
    required this.workout,
    required this.onSelectWorkout,
  });

  final Workout workout;
  final void Function(Workout workout) onSelectWorkout;

  String get complexityText {
    return workout.difficulty.name[0].toUpperCase() +
        workout.difficulty.name.substring(1);
  }

  String get affordabilityText {
    return workout.affordability.name[0].toUpperCase() +
        workout.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectWorkout(workout);
        },
        child: Stack(
          children: [
            Hero(
              tag: workout.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(workout.imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      workout.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis, // Very long text ...
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WorkoutItemTrait(
                          icon: Icons.schedule,
                          label: '${workout.duration} min',
                        ),
                        const SizedBox(width: 10),
                        WorkoutItemTrait(
                          icon: Icons.work,
                          label: complexityText,
                        ),
                        const SizedBox(width: 10),
                       // WorkoutItemTrait(
                        //  icon: Icons.attach_money,
                        //  label: affordabilityText,
                       // )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}