import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// What this file is for is to simply display to the user what the dashboard section is about
// Nothing major needs to be done on this file unless you would need to change the text
class dashboardExplanation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color dashColor = Color(0xFF0A5678);

    return SingleChildScrollView(
      child: Container(
        color: dashColor,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // Title
              'What is Chargers Link?',
              style: GoogleFonts.publicSans(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              // Description / Content
              'Chargers Link is your tool to navigate Capitol Technology University, click on any of the vcards to get access to the most up to date information',
              style: GoogleFonts.publicSans(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
