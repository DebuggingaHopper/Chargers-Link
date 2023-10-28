import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'pages/dashboard.dart';
import 'package:flutter/services.dart';

// Here we are setting our colors so we can set some custom colors when the user slides on the surroundings of the app
const MaterialColor myColor = const MaterialColor(
  0xC62128, // 0xFF218B21 is the primary color value (RGBA)
  const <int, Color>{
    50: const Color(0xC62128), // Define shades if needed
    100: const Color(0xC62128),
    200: const Color(0xC62128),
    300: const Color(0xC62128),
    400: const Color(0xC62128),
    500: const Color(0xC62128),
    600: const Color(0xC62128),
    700: const Color(0xC62128),
    800: const Color(0xC62128),
    900: const Color(0xC62128),
  },
);
// myColor is referring the dark red color we are using for the application

/// Entry point
/// Initialize date before app launch and lock screen orientation to portrait.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class LaunchApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capitol App',
      theme: ThemeData(primarySwatch: myColor),
      home: Dashboard(), // Point to the Dashboard widget
    );
  }
}

/// MyApp is the root widget for this application.
/// Sets app title, theme, and sets up the home page.
class MyApp extends LaunchApplication {}
