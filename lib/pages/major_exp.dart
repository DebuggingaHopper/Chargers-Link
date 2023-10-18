import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Similar to the previous explanation dart files, this just provides an explanation of what the majors dashboard displays
class IDEExplanation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color dashColor = Color(0xFF0A5678);

    return Container(
      color: dashColor,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            'What is the majors dashboard?',
            style: GoogleFonts.publicSans(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          // content
          Text(
            'The Major dashboard is where you can get the best information for your respective major while also being able to see what else is avaliable for the other majors. The knowledge is there for you to use how you want, just click on a desired major!',
            style: GoogleFonts.publicSans(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
