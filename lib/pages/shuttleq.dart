import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// What this file is for is to simply display to the user what the shuttle section is about.
// Nothing major needs to be done on this file unless you would need to change the text
class shuttleExplanation extends StatelessWidget {
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
            // The title
            Text(
              'Where is the shuttle going?',
              style: GoogleFonts.publicSans(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            // The content which is a simple explanation
            Text(
              'The shuttle is going to the following locations: \n \n Capitol Technology University \n \n Greenbelt Metro \n \n IKEA 101000 Baltimore Ave, College Park, MD 20740 \n \n Shoppers Food Warehouse 13600 Baltimore Ave, Laurel, MD \n \n Towne Centre at Laurel (Movie Theater) 14828 Baltimore Ave Laurel, MD 20707 \n \n Giant 1009 Fairlawn Ave, Laurel MD \n Target 198 3343 Corridor Market Place, Laurel, MD \n \n Walmart Route 198 3549 Russett Green E Laurel, MD',
              style: GoogleFonts.publicSans(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
