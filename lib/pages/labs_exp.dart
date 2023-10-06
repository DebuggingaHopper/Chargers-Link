import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class labsExplanation extends StatelessWidget {
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
              'What are the Labs at Capitol?',
              style: GoogleFonts.publicSans(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'At Capitol Technology University we have labs avaliable for all students to visit to expand their knowledge, in this page you can see quick preview of the labs alongside their hours.',
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
