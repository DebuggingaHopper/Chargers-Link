import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shuttleq.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShuttleScreen(),
    );
  }
}

class ShuttleScreen extends StatelessWidget {
  final Map<String, String> schedule = {
    '12:00': 'Capitol Tech',
    '2:00': 'Capitol Tech',
    '4:00': 'Capitol Tech',
    '6:00': 'Capitol Tech',
    '12:20': 'Greenbelt Metro',
    '2:20': 'Greenbelt Metro',
    '4:20': 'Greenbelt Metro',
    '6:20': 'Greenbelt Metro',
    '12:35': 'Ikea',
    '2:35': 'Ikea',
    '4:35': 'Ikea',
    '6:35': 'Ikea',
    '12:50': 'Shoppers Food',
    '2:50': 'Shoppers Food',
    '4:50': 'Shoppers Food',
    '6:50': 'Shoppers Food',
    '1:00': 'Laurel Towne Center',
    '3:00': 'Laurel Towne Center',
    '5:00': 'Laurel Towne Center',
    '7:00': 'Laurel Towne Center',
    '1:10': 'Giant',
    '3:10': 'Giant',
    '5:10': 'Giant',
    '7:10': 'Giant',
    '1:30': 'Target',
    '3:30': 'Target',
    '5:30': 'Target',
    '7:30': 'Target',
    '1:40': 'Walmart',
    '3:40': 'Walmart',
    '5:40': 'Walmart',
    '7:40': 'Walmart',
  };

  @override
  Widget build(BuildContext context) {
    Color dashColor = Color(0xFF0A5678);
    final currentTime = DateTime.now();
    final formattedTime = _formatTime(currentTime);

    // Calculate the next departure time based on the current time
    String nextDeparture = calculateNextDeparture(formattedTime);
    return Scaffold(
      backgroundColor: dashColor,
      appBar: AppBar(
        title: Text(
          'Friday & Saturday Departures',
          style: GoogleFonts.publicSans(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return shuttleExplanation();
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ShuttleInfo(schedule: schedule),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              'Next Departure: $nextDeparture',
              style: GoogleFonts.publicSans(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final minute = time.minute;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    return '$hour:${minute.toString().padLeft(2, '0')} $period';
  }

  // Function to calculate the next departure location based on the current time
  String calculateNextDeparture(String currentTime) {
    // Convert the schedule map to a list of entries and sort it by time
    final sortedSchedule = schedule.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    // Find the next departure time and location
    for (final entry in sortedSchedule) {
      if (entry.key.compareTo(currentTime) > 0) {
        final nextDepartureTime = entry.key;
        final nextDepartureLocation = entry.value;
        return '$nextDepartureTime - $nextDepartureLocation';
      }
    }

    // If no next departure found, return a default message
    return 'No more departures today';
  }
}

class ShuttleInfo extends StatelessWidget {
  final Map<String, String> schedule;

  ShuttleInfo({required this.schedule});

  @override
  Widget build(BuildContext context) {
    // Convert the schedule map to a list of entries and sort it by time
    final sortedSchedule = schedule.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    return Container(
      height: MediaQuery.of(context).size.height *
          0.7, // Adjust the height as needed
      child: ListView(
        children: sortedSchedule.map((entry) {
          String time = entry.key;
          String destination = entry.value;

          // Load custom icons from assets
          AssetImage iconAsset;
          if (destination == 'Capitol Tech') {
            iconAsset = AssetImage('assets/Cap.png');
          } else if (destination == 'Greenbelt Metro') {
            iconAsset = AssetImage('assets/metro.png');
          } else if (destination == 'Ikea') {
            iconAsset = AssetImage('assets/ikea.png');
          } else if (destination == 'Shoppers Food') {
            iconAsset = AssetImage('assets/shoppers.png');
          } else if (destination == 'Laurel Towne Center') {
            iconAsset = AssetImage('assets/regal.png');
          } else if (destination == 'Target') {
            iconAsset = AssetImage('assets/target.png');
          } else if (destination == 'Walmart') {
            iconAsset = AssetImage('assets/walmart.png');
          } else if (destination == 'Giant') {
            iconAsset = AssetImage('assets/giant.png');
          } else {
            // Use a default icon if destination is unknown
            iconAsset = AssetImage('assets/Cap.png');
          }

          // Set all times to be displayed as "PM"
          String amPm = 'PM';

          // Convert time to 12-hour format
          int hour = int.parse(time.split(':')[0]) % 12;
          if (hour == 0) {
            hour = 12; // 12:00 should be displayed as 12:00 PM
          }
          time = '$hour:${time.split(':')[1]}';

          return ListTile(
            leading: Image.asset(
              iconAsset.assetName,
              width: 35, // Set the width to the desired size
              height: 35, // Set the height to the desired size
            ),
            title: Text(
              '$time $amPm',
              style: GoogleFonts.publicSans(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              destination,
              style: GoogleFonts.publicSans(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
