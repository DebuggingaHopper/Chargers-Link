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
    /// Set up buttons by embedding them within their own list...
    final List<MenuItem> menuItems = [
      MenuItem(
        // ** This is where we would send the user to the calendly advising page, the url can be changed in the url.dart if the url chnages
        title: "Advising",
        icon: Icons.person_pin,
        onTap: () async {
          final advisorSelection = await showDialog<String>(
            context: context,
            builder: (BuildContext context) {
              return AdvisorSelectionDialog();
            },
          );

          if (advisorSelection == 'Lainey') {
            if (!await launchUrl(scheduleAdv_Lainey)) {
              throw Exception('Could not launch');
            }
          } else if (advisorSelection == 'Brittany') {
            if (!await launchUrl(scheduleAdv_Brittany)) {
              throw Exception('Could not launch');
            }
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
          // TODO: Find alternate and fix this.
          await launch('https://discord.gg/EVaxGFbJuK');
        }, // Add your URL here or set it to null
      ),

      MenuItem(
        // This leads the user to the Campus map
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
          // This leads the user to the store with the Universities Safety Application.
          title: 'Emergency Contacts',
          icon: Icons.emergency_outlined,
          onTap: () {
            LaunchReview.launch(
              androidAppId: androidId, // Replace with your Android app ID
              iOSAppId: iosId, // Replace with your iOS app ID
            );
          }),
      MenuItem(
        // This leads to the Lab Dashboard
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
        // This leads to the major dashboard where students can get access to the information pertaining to their major
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
        // This leads to the link that allows users schedule time with a tutor
        title: 'Tutoring',
        icon: Icons.live_help_outlined,
        onTap: () async {
          if (!await launchUrl(studentSuccess)) {
            throw Exception('Could not launch');
          }
        },
      ),
      MenuItem(
        // This leads users to where they can order school spirit
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

// This creates the Dialog that allows the user to select one of the two Advisors currently avaliable
class AdvisorSelectionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Choose an Advisor', textAlign: TextAlign.center),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AdvisorCard(
            name: 'Lainey Molin',
            onTap: () {
              Navigator.pop(context, 'Lainey');
            },
          ),
          AdvisorCard(
            name: 'Brittany Sanner',
            onTap: () {
              Navigator.pop(context, 'Brittany');
            },
          ),
          // Add more AdvisorCard widgets as needed
        ],
      ),
    );
  }
}

class AdvisorCard extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  AdvisorCard({
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(Icons.account_circle, size: 60, color: Colors.blue),
              SizedBox(height: 16),
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
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
