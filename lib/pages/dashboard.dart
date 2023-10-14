import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'acalander.dart';
import 'MapPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'majorRescources.dart';
import 'shuttlecal.dart';
import 'url.dart';
import 'dashboard_exp.dart';
import 'package:launch_review/launch_review.dart';
import 'labs.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    Color dashColor = Color(0xFF0A5678);
    ;
    /*
    * * This is where we set our desired buttons for the dashboard by making them into their own entries within a list of the mneuItems class
    */
    final List<MenuItem> menuItems = [
      MenuItem(
        // ** This is where we would send the user to the calendly advising page, the url can be changed in the url.dart if the url chnages
        title: "Advising",
        icon: Icons.person_pin,
        onTap: () async {
          if (!await launchUrl(scheduleAdv)) {
            throw Exception('Could not launch');
          }
        },
      ),
      MenuItem(
        // ** This is where we would send the user to the megabyte page, the url can be changed in the url.dart if the url chnages
        title: "MegaByte Cafe",
        icon: Icons.fastfood_outlined,
        onTap: () async {
          if (!await launchUrl(megaByte)) {
            throw Exception('Could not launch');
          }
        },
      ),
      MenuItem(
        // ** This is where we would send the user to the official Capitol Discord, the url can be changed in the url.dart if the url chnages
        title: 'Community',
        icon: Icons.groups_2_outlined,
        onTap: () async {
          await launch('https://discord.gg/EVaxGFbJuK');
        }, // Add your URL here or set it to null
      ),
      // Add more menu items with onTap callbacks as needed.
      MenuItem(
        title: "Campus Map",
        icon: Icons.map_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Map(), // Replace with your map page
            ),
          );
        },
      ),
      MenuItem(
          title: 'Emergency Contacts',
          icon: Icons.emergency_outlined,
          onTap: () {
            LaunchReview.launch(
              androidAppId:
                  'com.cutcom.apparmor.captechu&hl=en_US&gl=US', // Replace with your Android app ID
              iOSAppId: '6447269281', // Replace with your iOS app ID
            );
          }),
      MenuItem(
        title: 'Labs',
        icon: Icons.school_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LabPage(), // Replace with your map page
            ),
          );
        }, // Add your URL here or set it to null
      ),
      MenuItem(
        // ** This leads to the shuttle info screen which can be analyzed in the file shuttlecal.dart
        title: 'Shuttle Info',
        icon: Icons.bus_alert_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ShuttleScreen(), // Replace with your map page
            ),
          );
        }, // Add your URL here or set it to null
      ),
      MenuItem(
        title: 'Majors',
        icon: Icons.verified_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CompSciResourcesPage(), // Replace with your map page
            ),
          );
        },
      ),
      MenuItem(
        title: 'Tutoring',
        icon: Icons.live_help_outlined,
        onTap: () async {
          if (!await launchUrl(studentSuccess)) {
            throw Exception('Could not launch');
          }
        },
      ),
      MenuItem(
        title: 'School Store',
        icon: Icons.store_mall_directory_outlined,
        onTap: () async {
          if (!await launchUrl(capitolStore)) {
            throw Exception('Could not launch');
          }
        },
      ),
      // TODO: If we want to add more items within this list, please follow the previous entries to create them
      // Add other menu items without onTap callbacks if they don't need one.
    ];
    return Scaffold(
      backgroundColor: dashColor,
      // This is the top portion that is visible
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/Cap.png', // Path to your logo image in the assets folder
              fit: BoxFit
                  .contain, // You can adjust the fit based on your logo size
              height: 52, // Adjust the height to fit your logo
            ),
            SizedBox(width: 8), // Add spacing between the logo and text
            Text(
              'ChargersLink',
              style: GoogleFonts.publicSans(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return dashboardExplanation();
                },
              );
            },
          ),
        ],
      ),

      // Here is where we construct our bottom bar as you see we have two buttons in between iof our calander button
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // The first collumn which is the first button which is accessing the virtual library
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    if (!await launchUrl(virtualLibrary)) {
                      throw Exception('Could not launch');
                    }
                  },
                  icon: Icon(Icons.local_library),
                ),
                Text(
                  'Virtual Library',
                  style: GoogleFonts.publicSans(),
                ),
              ],
            ),
            // next we are creating the second collumn which consists of accessing the MyCapitol Web Application
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    if (!await launchUrl(myCapitol)) {
                      throw Exception('Could not launch');
                    }
                  },
                  icon: Icon(Icons.info),
                ),
                Text(
                  'Access My Capitol',
                  style: GoogleFonts.publicSans(),
                ),
              ],
            ),
            // Add more columns here if needed
          ],
        ),
      ),

      // The following is the calander button that when clicked will display the academic calendar
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black, // Change the color to your desired color
        ),
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TableEventsExample()),
          ),
          child: Icon(Icons.calendar_today),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ** This is the code that constructs the grid where all our menuItems are visible as cards
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return GestureDetector(
            onTap: () {
              if (menuItem.onTap != null) {
                menuItem.onTap!(); // Call the onTap callback
              } else {
                // Handle the case when onTap is null
                // For example, navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // Add the corresponding screen here
                      // Example: return EmergencyContactsScreen();
                      return Container();
                    },
                  ),
                );
              }
            },
            // ** The following would then create every item in our menuItems list woth the desired settings
            child: Card(
              elevation: 2, // Adjust the elevation as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    menuItem.icon,
                    size: 45,
                    color: Color.fromARGB(255, 198, 33, 40),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    menuItem.title,
                    style: GoogleFonts.publicSans(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ** This is where MenuItem is defined and its corresponding variables
class MenuItem {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  MenuItem({
    required this.title,
    required this.icon,
    this.onTap,
  });
}
