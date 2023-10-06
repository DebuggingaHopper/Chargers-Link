import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'labs_exp.dart';

class Lab {
  final String name;
  final String imageUrl;
  final String shortBio;

  Lab({required this.name, required this.imageUrl, required this.shortBio});
}

List<Lab> labList = [
  Lab(
    name: 'CS Lab',
    imageUrl: 'assets/cslab.png',
    shortBio: '''
🕒 **LAB HOURS**
- **Mondays & Wednesdays:** 10 AM - 1 PM
- **Fridays:** 9 AM - 2 PM
- **Saturdays:** 9 AM - 12 PM

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
  Lab(
    name: 'Cyber Lab',
    imageUrl: 'assets/Cyber.png',
    shortBio: '''
🕒 **LAB HOURS**
- **Monday - Thursday:** 12 PM - 5 PM

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
  Lab(
    name: 'Esports Arena',
    imageUrl: 'assets/esports.jpg',
    shortBio: '''
**🕒 ESports Arena Hours**
- **Monday - Friday:** 9 AM - 10 PM
- **Saturday - Sunday:** 6 PM - 10 PM

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
      body: PageView.builder(
        itemCount: labList.length,
        itemBuilder: (context, index) {
          final lab = labList[index];
          return _buildLabCard(context, lab);
        },
      ),
    );
  }

  Widget _buildLabCard(BuildContext context, Lab lab) {
    return Card(
      elevation: 5,
      color: dashColor,
      child: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Column(
          children: [
            Image.asset(
              lab.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
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
