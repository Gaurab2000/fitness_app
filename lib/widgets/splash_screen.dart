import 'package:fitness_app/screens/tabs.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize animation controller and animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      //Duration.zero
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
     // Curves.linear
    );

    // Start the animation
    _animationController.forward();

    // Simulate loading delay
    Timer(const Duration(seconds: 4), () {
      // Navigate to the next screen after loading
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => TabsScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Lock screen orientation to portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 38, 37, 37),
                  Color.fromARGB(255, 38, 37, 37),
                ],
              ),
            ),
          ),
          // Animated logo
          Positioned(
            
            child: FadeTransition(
              opacity: _animation,
              child: ScaleTransition(
                scale: _animation,
                child: Image.asset(
                  'assets/images/logo.png',  // Path to your logo image
                  width: 200,
                  height: 400,
                ),
              ),
            ),
          ),
          // Loading indicator
          const Center(
            child: CircularProgressIndicator(),
          ),
          // Branding elements
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: const [
                Text(
                  'FitFLex',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Elevate Your Fitness, Unleash Your Potential!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

