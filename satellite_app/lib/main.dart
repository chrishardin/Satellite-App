import 'package:flutter/material.dart';
import 'src/views/auth/welcome_screen.dart';
import 'src/views/auth/login_screen.dart';
import 'src/views/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get the user's theme mode preference here, e.g. from settings or device theme
    ThemeMode themeMode =
        ThemeMode.system; // or ThemeMode.light / ThemeMode.dark

    return MaterialApp(
        title: 'OrbitEye',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const WelcomeScreen(),
        routes: {
          '/welcome': (context) => const WelcomeScreen(),
          '/login': (context) => LoginScreen(),
          '/signup': (context) => SignUpScreen(),
          // TODO: Add ther routes here
        });
  }
}

final TextTheme lightTextTheme = const TextTheme(
  displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
);

final TextTheme darkTextTheme = const TextTheme(
  displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
);

// Define a light theme color scheme
final ColorScheme lightColorScheme = const ColorScheme.light(
    primary: Colors.blueGrey,
    secondary: Colors.blueAccent,
    surface: Colors.white,
    background: Colors.white);

// Define a dark theme color scheme
final ColorScheme darkColorScheme = const ColorScheme.dark(
    primary: Colors.blueGrey,
    secondary: Colors.lightBlueAccent,
    surface: Colors.black,
    background: Colors.black);

// Define light theme data
final ThemeData lightTheme = ThemeData(
  colorScheme: lightColorScheme,
  fontFamily: 'Montserrat',
  textTheme: lightTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.secondary,
  ),
);

// Define dark theme data
final ThemeData darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  fontFamily: 'Montserrat',
  textTheme: darkTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: darkColorScheme.primary,
    foregroundColor: darkColorScheme.secondary,
  ),
);
