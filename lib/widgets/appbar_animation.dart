import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated App Bar Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedAppBarTitle(),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}

class AnimatedAppBarTitle extends StatefulWidget {
  @override
  _AnimatedAppBarTitleState createState() => _AnimatedAppBarTitleState();
}

class _AnimatedAppBarTitleState extends State<AnimatedAppBarTitle> {
  bool _isTitleVisible = true;

  @override
  void initState() {
    super.initState();
    // Example: Start animation after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isTitleVisible = !_isTitleVisible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isTitleVisible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: Text('App Title'),
    );
  }
}
