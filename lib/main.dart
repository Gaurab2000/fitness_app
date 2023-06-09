
import 'package:fitness_app/screens/tabs.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    //brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 46, 150, 240),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main()  {

 runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home:  SplashScreen(),//proceeds to splash screen 
    );
  }
}
