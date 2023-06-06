import 'package:flutter/material.dart';

class Fitness {
  Fitness(
      {this.fitnessName = '',
      this.fitnessImage = '',
      this.fitnessMaker = '',
      this.startColor,
      this.endColor});

  String fitnessName;
  String fitnessImage;
  String fitnessMaker;
  Color? startColor;
  Color? endColor;
}

var fitnesses = [
  Fitness(
    fitnessName: 'Virtual Trainer',
    fitnessImage: 'workouttutorial.png',
    fitnessMaker: 'FitFlex Originals',
    startColor: Color.fromARGB(255, 28, 60, 92),
    endColor: Color.fromARGB(255, 3, 77, 83),
  ),
  Fitness(
    fitnessName: 'Track Progress',
    fitnessImage: 'workoutlogging.jpg',
    fitnessMaker: 'FitFlex Originals',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
   fitnessName: 'Workout Challenge',
    fitnessImage: 'workoutchallenge.jpg',
    fitnessMaker: 'FitFlex Originals',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
    fitnessName: 'Diet Plan',
    fitnessImage: 'dietplan.jpg',
   fitnessMaker: 'FitFlex Originals',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Social Community',
    fitnessImage: 'socialcommunity.jpg',
    fitnessMaker: 'FitFlex Originals',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Personalized Workout Plan',
    fitnessImage: 'personalizedworkout.jpg',
    fitnessMaker: 'FitFlex Originals',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Workout Notifier',
    fitnessImage: 'workoutnotifier.jpg',
    fitnessMaker: 'FitFlex Originals',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'To-do workout',
    fitnessImage: 'todo.jpg',
    fitnessMaker: 'FitFlex Originals',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Gallery',
    fitnessImage: 'gallery.jpg',
    fitnessMaker: 'FitFlex Originals',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
    fitnessName: 'Body Meaasurement Tracking',
    fitnessImage: 'bodymeasurement.jpg',
    fitnessMaker: 'FitFlex Originals',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Calorie Tracking',
    fitnessImage: 'calorietracking.jpg',
    fitnessMaker: 'FitFlex Originals',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
];
