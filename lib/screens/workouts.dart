import 'package:flutter/material.dart';

import 'package:fitness_app/models/workout.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({
    super.key,
    required this.title,
    required this.workouts,
  });

  final String title;
  final List<Workout> workouts;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (workouts.isNotEmpty) {
      content = ListView.builder(
    
        itemCount: workouts.length,
        itemBuilder: (ctx, index) => Text(
          workouts[index].title,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}