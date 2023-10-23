# What is the Pages Folder?

The Pages folder consists of all the files that create all of the various pages that the app creates. We will go through each of the crucial pages in order of how to access it, however, the first page that will be delved into is the url.dart file since it is crucial. Overall this README will delve into explaining what each file contributes in regards to the application, and what crucial information you may need to change & how to do it.

## What is url.dart?

url.dart is where we store the static urls that we access within the various files in the pages folder alongside the main dashboard. The way we establish these url's is the following, and this stays the same within the various urls stored within the file:
```
// This is my URL list which I utilize throughout the application

/*
* * The Following URLS are used for the CS IDE Section
*/
final Uri vsUrl = Uri.parse('https://code.visualstudio.com/');
final Uri pycharmUrl = Uri.parse('https://www.jetbrains.com/pycharm/');
final Uri intjUrl = Uri.parse('https://www.jetbrains.com/idea/');
final Uri eclipseUrl = Uri.parse('https://www.eclipse.org/ide/');
final Uri androidUrl = Uri.parse('https://developer.android.com/studio');
final Uri iosUrl = Uri.parse('https://developer.apple.com/xcode/');
final Uri vsDownload =
    Uri.parse('https://visualstudio.microsoft.com/downloads/');
```

The only file that differs are strings which are also declared within this file to ensure they cannot be altered within the program:
```
// This points to the launch of the Discord app to the following server which is for Capitol official Discord User
final String discord_url = 'https://discord.gg/CpRUBHfuAd';
```

Overall this file establishes the URL's alongside the necessary variables in a manner that can ensure they do not get tampered with.

## What is dashboard.dart

Dashboard.dart is the main file that displays the main dashboard the user has access to, it heavily relies on populating the screen with menuItems which are defined within the code. The following is the current list of menuItems that are populated within the application:

```
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
              androidAppId:
                  'com.cutcom.apparmor.captechu&hl=en_US&gl=US', // Replace with your Android app ID
              iOSAppId: '6447269281', // Replace with your iOS app ID
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
```

This is the only code you would need to change if you would like to add a new menuitem to the dashboard at any point.

Each MenuItem has a title that is displayed, an icon that it is set to, and an on-tap function that declares what occurs when the card is touched. now you may be wondering what cards I am referring to, well the following code is what constructs every card by taking the title, icon, and on-tap function it has which are then populated:

```
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
```

It is highly recommended to read the comments to understand the workflow of this code, but the main understanding is that we construct the grid view while also constructing the bottom navigation which was done through a seperate code. The main idea is to read through the comments to fully understand the code.

Now the following sections will go through what happens in each card!

### What Happens when I click Advising

It opens the link to the Advising calendly which allows the user to schedule an appointment, the link can be changed within url.dart

### What Happens when I click MegaByteCafe

It opens the link to the megaByte Cafe website which allows the users to order their food through their browser. This link can be changed within url.dart

### What Happens When I Click Community
It launches the Discord App on the user's phone to then provides an invite to the official Discord server for Capitol Technology University. The link for the official Discord URL can be changed within url.dart

### What does pressing Campus Map lead to: What is MapPage.dart

When looking through the comments on MapPage.dart you will notice that what it does is simply take the image which is a PNG that can be changed within the assets folder & pubspec.yaml, and has it populate the majority of the phone screen allowing the user to navigate the map without much issue.

### What does pressing Emergency Contacts lead to: Why the Play Store / Apple Store?

When you click on Emergency Contacts, it leads to the Play Store/ Apple Store so the user can download the Cap Tech U Safety App. The Cap Tech u safety app is an app developed by AppArmor that provides emergency contact information for the student populace. This is done to ensure that the already constructed application provided by the university is still supplied to the student community.

### What does clicking Labs lead to: What is labs.dart?

What Labs.dart does it display the current labs at the university alongside a description of what it does, hours alongside a nice image that allows the user to have a voisual representation of it. It easy to traverse through this page by sliding. The main aspect of the code to understand or even change is the following;

```
List<Lab> labList = [
  // This creates the CS Lab
  Lab(
    name: 'CS Lab',
    imageUrl: 'assets/cs.jpg',
    shortBio: '''
🕒 **LAB HOURS**
- **Mondays & Wednesdays:** 10 AM - 1 PM
- **Fridays:** 9 AM - 2 PM
- **Saturdays:** 9 AM - 12 PM
---
**🏢 Located at MCI Hall**

---

💻 In the **Computer Science and Artificial Intelligence Lab**, you will have the opportunity to engage in cutting-edge applied computer science projects, including:

- 🤖 Applied artificial intelligence and machine learning projects
- 📊 Utilization of real-world datasets
- 💡 Innovative predictive problems

--- 

🎓 Students working in the lab will gain an end-to-end understanding of:

- 📈 Problem formulation and understanding
- 📈  Data manipulation and integration
- 💻 Model implementation
- 💻 Accelerated computing
- 📊 Model evaluation
''',
  ),
  // This creates the Cyber Lab
  Lab(
    name: 'Cyber Lab',
    imageUrl: 'assets/cyber.jpeg',
    shortBio: '''
🕒 **LAB HOURS**
- **Monday - Thursday:** 12 PM - 5 PM
---
**🏢 Located at McGowan Academic  Center**

---


🖥️ Our **Cyber Lab** provides a unique opportunity for you to apply classroom theories and refine your skills. During your time here, you'll collaborate with peers to:

- 💻 Simulate hacker attacks
- 🔒 Secure operating systems from malicious activity
- 🔍 Identify vulnerabilities and develop strategies to address them
- 🔍 Detect and mitigate attacks to minimize potential damage
- 💻 Write code to detect anomalies and malware

Additionally, students have the exciting opportunity to participate in 🏆 **Cyber Competitions**. For more details, please refer to the Cyber major section.
''',
  ),
  // This creates the ESports Arena
  Lab(
    name: 'Esports Arena',
    imageUrl: 'assets/esports.jpg',
    shortBio: '''
**🕒 LAB HOURS**
- **Monday - Friday:** 9 AM - 10 PM
- **Saturday - Sunday:** 6 PM - 10 PM
---
**🏢 Located at Telecomm Hall**

---

**Welcome to Capitol Technology University's State-of-the-Art ESports Arena!**

Our Esports Arena provides a unique opportunity for you to destress while also allowing you the opportunity to join a team.

🏆 **Join the Capitol Chargers Esports Team**
- 🖥️ PC and console gaming options available
- 🖥️ Enhance computer skills and teamwork experience
- 🌍 Engage with your campus community
- 🎮 Get involved in activities
- 🌍 Create lasting friendships with peers and teammates

Whether you're a casual gamer or a competitive esports enthusiast, our Esports Arena is the perfect place for you to unwind, socialize, and level up your gaming skills. Join us for exciting gaming experiences and be a part of the Capitol Chargers Esports legacy!

''',
  ),
  // This creates the Fusion Lab
  Lab(
    name: 'Fusion Lab',
    imageUrl: 'assets/fusion.jpg',
    shortBio: '''
 🕒 **LAB HOURS**

- **Monday - Friday:** 9 AM - 5 PM
- **Saturday - Sunday:** By Appointment
---
**🏢 Located at McGowan Academic  Center**

---

**Welcome to Capitol Technology University's Innovation Hub - The Fusion Lab!**

The Fusion Lab, launched in January 2014, is a creative haven run by AE (pun intended) for all students to unleash their creativity and bring their ideas to life. 🛠️

**Why Choose Fusion Lab?**
- **Hands-on Learning:** 🖨️ Work on class projects and fun builds. 
- **Diverse Workshops:** 📻 Participate in student-focused workshops, including ham radio lessons. 
- **Community:** 🌍 Connect with like-minded students through clubs, meetings, and pizza parties. 
- **Student-Run:** 🌍 Embodying the AE Department's philosophy, projects are student-run and student-led. 

Whether you're looking to create something extraordinary or utilize 3D printers for personal projects, Fusion Lab is your go-to space for innovation! 💡

''',
  ),
  // This creates the Engineering Lab
  Lab(
    name: 'Electronics Engineering Lab',
    imageUrl: 'assets/engineering.jpg',
    shortBio: '''

🕒 **Lab Hours:**
- **Monday - Thursday:** 8 AM - 9 PM
- **Friday - Saturday:** 10 AM - 4 PM
---
**🏢 Located at MCI Hall**

---
 🚀 **Hope you enjoy Capitol Technology Universities Engineering Lab!**

**Expose yourself to various opprtunities within this lab**

In this Laboratory not only will you be able to attend hands on courses but also allow yourself to have access to tools to teach yourself new skills! 🔧 

⚙️  **Experience access to varying resources**

You'll work with the various tools that will allow you to teach yourself skills like the following
- 🔧 soldering
- 🚀 understanding of shcmeatics and how to utilize them in your own projects
- ⚙️ Access to Arduinosand other hardware
- 🛠️ Troubleshoot varying hardware issues and acquire new skillsets

''',
  ),
  // This creates the SFOTC
  Lab(
    name: 'Space Flight Operations Training Center',
    imageUrl: 'assets/space.jpg',
    shortBio: '''

🕒 **Lab Hours:**
- **Monday - Friday:** 9 AM - 5 PM
- **Saturday - Sunday:** By Appointment

---
**🏢 Located at McGowan Academic  Center**

---
 🚀 **Welcome to Capitol Technology University's Space Flight Operations Training Center**

**Explore the Universe, Train like an Astronaut**

In this cutting-edge Space Flight Operations Training Center, you're not just a student; you're an astronaut in training! 🌌

🛰️ **Experience Real Spacecraft Simulations**

You'll work with the same tools that supported over 30 NASA missions. Our VirtualSat® spacecraft dynamic simulator is your launchpad to the cosmos. Get ready to:
- 🔧 Operate spacecraft systems
- 🚀 Perform thruster maneuvers
- 📡 Monitor telemetry data
- 🛠️ Troubleshoot and recover from anomalies

**Launch Your Career**

Our program equips you with the skills and knowledge to work on iconic NASA missions like Hubble, LRO, and JWST. 🛰️ Join us on a journey to the stars!
''',
  ),
  // This creates the UAS Lab
  Lab(
    name: 'UAS Lab',
    imageUrl: 'assets/uas.jpg',
    shortBio: '''

🕒 **Lab Hours:**
- **Monday - Friday:** 9 AM - 10 PM
- **Saturday - Sunday:** 6 PM - 10 PM

---
🏢 **Located at McGowan Academic  Center**

---
🤖 **Welcome to Capitol Technology University's Identity, Credentialing, and Access Management Lab**

---

Prepare to dive into the world of Unmanned Autonomous Systems (UAS) and enhance your skills in:

- Physical Security
- Information Assurance
- Business Management
- Acquisition Management
---
Our state-of-the-art facility is designed to provide you with hands-on experience, opening doors to exciting career opportunities. As one of the leading laboratories in the U.S. higher education system, we've garnered support from industry giants such as 3M, Paxton, and Quantum Secure.

Explore the future of technology and security with us!
''',
  ),
  // This creates the ICAM Lab
  Lab(
    name: 'ICAM Lab',
    imageUrl: 'assets/icam.jpg',
    shortBio: '''

🕒 **Lab Hours:**
- **Monday - Friday:** 9 AM - 10 PM
- **Saturday - Sunday:** 6 PM - 10 PM

---
🏢 **Located at Telecomm Hall**

---
 🤖 **Welcome to Capitol Technology University's UAS Lab**

**Prepare to learn more about  Unmanned Autonomous Systems**

In this facility you will be exposed to various different droned and unmanned systems! 🔧 


You'll work with the various drones and additonal unmanned systems to acquire further knowledge of these systems and work on various projects
- 🔧 Operate various unmanned systes
- 🛸 Allow yourself to have hands on experience with drones and unmanned systems
- 📡 Monitor the progress of your unmanned system
- 🛠️ Troubleshoot and work towards further understanding of these systems for real world application

''',
  ),

  //Add more lab entries as needed
];
```

This is a list of all the labs that we will populate on the page. You will notice that the text is constructed through the markdown language which is the same language this document was constructed in. This was done so it was simple to understand, and easy to utilize tools like ChatGpt to construct the necessary description to ensure it would not be difficult to replicate if there are future labs to be added in the future.

### What does clicking Shuttle Info lead to: What is shuttlecal.dart?

When you click on the Shuttle Info card, you will then be led to another page that allows the user to see the current shuttle schedule and when the next departure will occur.

The only information you would need to change within this file is the following list of the scheduled times:
```

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
```
When making a change it is crucial that you ensure that you keep the same format as the following list, to ensure uniformity and to ensure that the list can populate without any issue. At any point any changes you made to the list caused issues please do look at this example to understand why we created it the way we did.


### What happens when I click majors: what is majorResources.dart

This is a more complex page due to the fact the way this page operates is simply once the user clicks on an icon pertaining to the major they are interested in, they will be provided various cards that when clicked will be expanded upon so the user has access to what they are looking for. This is a section we highly recommend someone who has experience in programming would need to read to understand the code. The main understanding is the following points:

**1** - Each major has its own boolean value
**2** - Each major has its own set of cards that have their own classes, so section A for Major A has 2 classes. 
**3** - This section needs to have a value indicating positions ranging from 0-6, this indicates how where it will be, 0 is the first card while 6 or higher is the last.

Point Number 3 is exemplified within this example:

```
 if (isSectionsCSVisible)
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    //Section 1
                    IDESection(
                      isExpanded: expandedSectionIndex == 0,
                      onTap: () {
                        setState(() {
                          expandedSectionIndex = 0;
                        });
                      },
                    ),
                    //Section 2
                    ProgrammingLanguagesSection(
                      isExpanded: expandedSectionIndex == 1,
                      onTap: () {
                        setState(() {
                          expandedSectionIndex = 1;
                        });
                      },
                    ),
                    // Section 3
                    OtherResourcesSection(
                      isExpanded: expandedSectionIndex == 2,
                      onTap: () {
                        setState(() {
                          expandedSectionIndex = 2;
                        });
                      },
                    ),
                    // Section 4
                    machineSection(
                      isExpanded: expandedSectionIndex == 3,
                      onTap: () {
                        setState(() {
                          expandedSectionIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
```
Please do take your time to red the code, and comments to understand how this was constructed.

### What Happens when I click Tutoring

It opens the link to the school's Student Success Center Appointment page, if at any point this url changes please revise within url.dart


### What Happens when I click School store

It opens the link to the school's merchandise website, if at any point this url changes please revise within url.dart

### What Happens when I click Virtual Library

It opens the link to the school's virtual library, if at any point this url changes please revise within url.dart

### What Happens when I Click Access My Capitol

It opens the link to MyCapitol, if at any point this url changes please revise within url.dart





