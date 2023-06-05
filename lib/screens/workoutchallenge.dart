import 'package:flutter/material.dart';

class WorkoutChallengePage extends StatefulWidget {
  @override
  _WorkoutChallengePageState createState() => _WorkoutChallengePageState();
}

class _WorkoutChallengePageState extends State<WorkoutChallengePage> {
  int _currentChallenge = 1;

  void _nextChallenge() {
    setState(() {
      _currentChallenge++;
    });
  }

  void _prevChallenge() {
    setState(() {
      if (_currentChallenge > 1) {
        _currentChallenge--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Challenge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Challenge $_currentChallenge',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Challenge description goes here.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _prevChallenge,
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _nextChallenge,
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WorkoutChallengePage(),
  ));
}
