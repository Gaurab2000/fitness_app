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
    fitnessMaker: 'Foodie Yuki',
    startColor: Color.fromARGB(255, 28, 60, 92),
    endColor: Color.fromARGB(255, 28, 60, 92),
  ),
  Fitness(
    fitnessName: 'Track Progress',
    fitnessImage: 'workoutlogging.jpg',
    fitnessMaker: 'Marianne Turner',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
   fitnessName: 'Workout Challenge',
    fitnessImage: 'workoutchallenge.jpg',
    fitnessMaker: 'Jennifer Joyce',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
    fitnessName: 'Easy classic lasagne',
    fitnessImage: 'img-classic-lasange.webp',
   fitnessMaker: 'Angela Boggiano',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Easy teriyaki chicken',
    fitnessImage: 'img-easy-teriyaki.webp',
    fitnessMaker: 'Esther Clark',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Easy chocolate fudge cake',
    fitnessImage: 'img-chocolate-fudge-cake.webp',
    fitnessMaker: 'Member recipe by misskay',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'One-pan spaghetti with nduja, fennel & olives',
    fitnessImage: 'img-one-pan-spaghetti.webp',
    fitnessMaker: 'Cassie Best',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Easy pancakes',
    fitnessImage: 'img-easy-pancake.webp',
    fitnessMaker: 'Cassie Best',
       startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Easy chicken fajitas',
    fitnessImage: 'img-chicken-fajitas.webp',
    fitnessMaker: 'Steven Morris',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
 Fitness(
    fitnessName: 'Easy vegetable lasagne',
    fitnessImage: 'img-easy-vegetable-lasagne.webp',
    fitnessMaker: 'Emma Lewis',
     startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
  Fitness(
    fitnessName: 'Thai fried prawn & pineapple rice',
    fitnessImage: 'img-thai-fried-prawn.webp',
    fitnessMaker: 'Good Food Team',
        startColor: const Color.fromARGB(248, 50, 76, 108),
    endColor: const Color.fromARGB(255, 34, 66, 92),
  ),
];
