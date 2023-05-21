 import 'package:flutter/material.dart';
 import 'package:fitness_app/models/workout.dart';
class WorkoutDetailsScreen extends StatelessWidget{
   const WorkoutDetailsScreen({super.key,required this.workout});

final Workout workout;

@override
Widget build(BuildContext context) {
  return  Scaffold(
  appBar: AppBar(
    title: Text(workout.title),
  ),
  body : Image.network(
    workout.imageUrl,
    width:double.infinity,
    height:300,
    fit: BoxFit.cover
  )
  );
}}