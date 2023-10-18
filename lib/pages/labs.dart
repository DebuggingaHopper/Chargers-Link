import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'labs_exp.dart';

// First we create the class for labs stating the three main details it contains.
class Lab {
  final String name;
  final String imageUrl;
  final String shortBio;

  Lab({required this.name, required this.imageUrl, required this.shortBio});
}
// Now we are creating the list of all the labs, you see we have the name and the image it utilizes

//Now you will notice the shortBio is composed of what we refer to as markdown Language
// this is the language used for GitHub which allows the text to be visually appealing

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

** Expose yourself to various opprtunities within this lab**

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

** Explore the Universe, Train like an Astronaut**

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
Color dashColor = Color(0xFF0A5678);

class LabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dashColor,
      appBar: AppBar(
        title: Text('Lab Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return labsExplanation();
                },
              );
            },
          ),
        ],
      ),
      // This is howe have the pageviewer for the lab sections
      body: PageView.builder(
        itemCount: labList.length,
        itemBuilder: (context, index) {
          final lab = labList[index];
          return _buildLabCard(context, lab);
        },
      ),
    );
  }

// This creates the labs
  Widget _buildLabCard(BuildContext context, Lab lab) {
    return Card(
      elevation: 5,
      color: dashColor,
      child: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Column(
          // This creates the lab entry with the provided image
          children: [
            Image.asset(
              lab.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            // This creates the lab entry with the provided lab name
            Container(
              color: dashColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  lab.name,
                  style: GoogleFonts.publicSans(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: dashColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  // This creates the lab entry with the provided lab description
                  // Wrap Markdown with a Container that adjusts its height based on the device's screen size
                  height: MediaQuery.of(context).size.height *
                      0.5, // Adjust the height as needed
                  child: Markdown(
                    data: lab.shortBio,
                    styleSheet: MarkdownStyleSheet(
                      p: GoogleFonts.publicSans(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      // You can define additional styles as needed
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
