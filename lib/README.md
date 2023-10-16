# What is the Lib folder?
The lib folder you are currently seeing is the main meat & potatoes of the application, it is currently split into two parts the first part is where we have 3 important files

## Main.dart
As you can see, Main.dart is a file that does not contain much code except for the following
```
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
```

What this all means is that when the app opens, the first page it will open is the dashboard which is within the pages folder but that will be delved within the pages folder README, all you need to know at the high level is that this code starts the whole application

It establishes the colors of the application and how it will show the user.

## Fall.dart

Fall.dart is the main file that holds the academic calander information, this is the only file you would want to edit if you need to update to the academic calander. 

**PLEASE REMEMBER** that this is the only file that needs to be edited if you want toe dit what the academic calander ifnromation displays, not visually but just the pure data. Tjhe following is an example of the first lines of the file

```
List<Map<String, dynamic>> AcademicData = [
  {
    "title": "Classes begin",
    "start_date": "2023-08-28",
    "end_date": "2023-08-28"
  },
  {
    "title": "Last day for 100% refund",
    "start_date": "2023-08-28",
    "end_date": "2023-08-28"
  },
  {
    "title": "First tuition installment due",
    "start_date": "2023-08-28",
    "end_date": "2023-08-28"
  },
```
All you need when editing the data is just chnage the start date and end date, if possible we can aim to also include the calander from the MyCapitol Website however that is later down the line. Simply enough Fall.dart is your main source of information in regards to the academic calander.

## utils.dart

Utils.dart should not be altered at any point however what it simply does is read the data from Fall.dart and create a data map with all this data that the application can read to populate the calander when called.
