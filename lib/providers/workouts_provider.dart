import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitness_app/data/dummy_data.dart';

final workoutsProvider = Provider((ref) {
  return dummyWorkouts;
});