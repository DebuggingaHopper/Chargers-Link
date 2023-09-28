import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'pages/dashboard.dart';

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

// Here we are saying to run the MyApp class, but we must also initliaze our dates
void main() async {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

// Here it's stating that the title would be Capitol App, the theme is set to our custom color
// Then we set our home page to page we establish as start page
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capitol App',
      theme: ThemeData(primarySwatch: myColor),
      home: StartPage(),
    );
  }
}

// The following is our start page, we are setting the theme to the desired color and creating the dahsborad from the dashboard dart
class StartPage extends StatelessWidget {
  // The following is our foundation of the startPage
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capitol App',
      theme: ThemeData(primarySwatch: myColor),
      home: Dashboard(), // Point to the Dashboard widget
    );
  }
}
