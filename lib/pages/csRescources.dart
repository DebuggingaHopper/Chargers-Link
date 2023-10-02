// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ide_exp.dart';
import 'url.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;

final List<ResourceItem> ideItems = [
  ResourceItem(
    title: 'Visual Studio',
    iconAsset: 'assets/vs.png',
    onTap: () async {
      if (!await launchUrl(vsDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Visual Studio Code',
    iconAsset: 'assets/VS.png',
    onTap: () async {
      if (!await launchUrl(vsUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'PyCharm',
    iconAsset: 'assets/pyCharm.png',
    onTap: () async {
      if (!await launchUrl(pycharmUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'InteliJ',
    iconAsset: 'assets/intelij.png',
    onTap: () async {
      if (!await launchUrl(intjUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Eclipse',
    iconAsset: 'assets/eclipse.png',
    onTap: () async {
      if (!await launchUrl(eclipseUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'AndroidStudio',
    iconAsset: 'assets/androidst.png',
    onTap: () async {
      if (!await launchUrl(androidUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Xcode',
    iconAsset: 'assets/xcode.png',
    onTap: () async {
      if (!await launchUrl(iosUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'BlueJ',
    iconAsset: 'assets/bluej.png',
    onTap: () async {
      if (!await launchUrl(bluejDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  // Add more IDE items as needed
];

final List<ResourceItem> languageItems = [
  ResourceItem(
    title: 'Python',
    iconAsset: 'assets/Py.png',
    onTap: () async {
      if (!await launchUrl(pyDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Java',
    iconAsset: 'assets/java.png',
    onTap: () async {
      if (!await launchUrl(javaDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'C',
    iconAsset: 'assets/c.png',
    onTap: () async {
      if (!await launchUrl(cDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'C#',
    iconAsset: 'assets/cSharp.png',
    onTap: () async {
      if (!await launchUrl(csharpDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'C++',
    iconAsset: 'assets/cPlus.png',
    onTap: () async {
      if (!await launchUrl(cplusDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Dart',
    iconAsset: 'assets/dart.png',
    onTap: () async {
      if (!await launchUrl(flutterDownload)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  // Add more language items as needed
];

final List<ResourceItem> otherItems = [
  ResourceItem(
    title: 'Leet Code',
    iconAsset: 'assets/leet.png',
    onTap: () async {
      if (!await launchUrl(pycharmUrl)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'GitHub',
    iconAsset: 'assets/git.png',
    onTap: () async {
      if (!await launchUrl(gitUrl)) {
        throw Exception('Could not launch');
      }
    },
  ),
  ResourceItem(
    title: 'Vim',
    iconAsset: 'assets/vim.png',
    onTap: () async {
      if (!await launchUrl(vimDownload)) {
        throw Exception('Could not launch');
      }
    },
  ),
  ResourceItem(
    title: 'Notepad++',
    iconAsset: 'assets/npd.png',
    onTap: () async {
      if (!await launchUrl(notepadplusDownload)) {
        throw Exception('Could not launch');
      }
    },
  ),
  // Add more other items as needed
];

final List<ResourceItem> cyberItems = [
  ResourceItem(
    title: 'Signal 9 Team',
    iconAsset: 'assets/signal9.png',
    onTap: () async {
      if (!await launch('https://discord.gg/CpRUBHfuAd')) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Wire Shark',
    iconAsset: 'assets/wireShark.png',
    onTap: () async {
      if (!await launchUrl(wiresharkURL)) {
        throw Exception('Could not launch');
      }
    },
  ),
];

final List<ResourceItem> cyberEvents = [
  ResourceItem(
    title: 'BsidesCharm',
    iconAsset: 'assets/bSides.png',
    onTap: () async {
      if (!await launchUrl(bsidesLink)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Hammercon',
    iconAsset: 'assets/hammerCon.png',
    onTap: () async {
      if (!await launchUrl(hammerconLink)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Dreamport events',
    iconAsset: 'assets/seal.png',
    onTap: () async {
      if (!await launchUrl(misiLink)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
  ResourceItem(
    title: 'Avengercon',
    iconAsset: 'assets/army.png',
    onTap: () async {
      if (!await launchUrl(avengerconLink)) {
        throw Exception('Could not launch');
      }
      // Handle the action when GitHub card is tapped
    },
  ),
];

class CompSciResourcesPage extends StatefulWidget {
  Color dashColor = Color(0xFF0A5678);

  @override
  _CompSciResourcesPageState createState() => _CompSciResourcesPageState();
}

class _CompSciResourcesPageState extends State<CompSciResourcesPage> {
  int expandedSectionIndex = -1;
  bool isSectionsCSVisible = false; // Initially, the sections are hidden
  bool issecurityVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.dashColor,
      appBar: AppBar(
        title: Text(
          'Majors',
          style: GoogleFonts.publicSans(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return IDEExplanation();
                },
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header (ListView)
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 85,
                    child: ListView(
                      // Set shrinkWrap to false
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSectionsCSVisible = !isSectionsCSVisible;
                                issecurityVisible = false;
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/CS.png',
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                    height:
                                        8), // Adjust the spacing between the icon and text
                                Text(
                                  'Computer Science',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSectionsCSVisible = false;
                                issecurityVisible = !issecurityVisible;
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Cyber.png', // Replace with the actual path to your PNG image
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                    height:
                                        8), // Adjust the spacing between the icon and text
                                Text(
                                  'Cyber Security',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSectionsCSVisible = false;
                                issecurityVisible = false;
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/engineering.png',
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                    height:
                                        8), // Adjust the spacing between the icon and text
                                Text(
                                  'Electrical / Mechatronics',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSectionsCSVisible = false;
                                issecurityVisible = false;
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/aerospace.png',
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                    height:
                                        8), // Adjust the spacing between the icon and text
                                Text(
                                  'Aerospace / UAS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          // Toggle Icon

          // Main content sections
          ,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
          ),
          if (isSectionsCSVisible)
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  IDESection(
                    isExpanded: expandedSectionIndex == 0,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 0;
                      });
                    },
                  ),
                  ProgrammingLanguagesSection(
                    isExpanded: expandedSectionIndex == 1,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 1;
                      });
                    },
                  ),
                  OtherResourcesSection(
                    isExpanded: expandedSectionIndex == 2,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),

          if (issecurityVisible)
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  CyberSection(
                    isExpanded: expandedSectionIndex == 0,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 0;
                      });
                    },
                  ),
                  cyberesourceSection(
                    isExpanded: expandedSectionIndex == 1,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 1;
                      });
                    },
                  ),
                  cybereventsSection(
                    isExpanded: expandedSectionIndex == 2,
                    onTap: () {
                      setState(() {
                        expandedSectionIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

// ** This is where we create the Programming Languages initial card where within it are the links to the languages
class ProgrammingLanguagesSection extends StatefulWidget {
  final bool isExpanded;
  final VoidCallback onTap;

  ProgrammingLanguagesSection({required this.isExpanded, required this.onTap});

  @override
  _ProgrammingLanguagesSectionState createState() =>
      _ProgrammingLanguagesSectionState();
}

class _ProgrammingLanguagesSectionState
    extends State<ProgrammingLanguagesSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: isExpanded
              ? null
              : 80, // Set the desired fixed height for the card when not expanded
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Programming Languages",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Programming Languages you can learn",
                  style: GoogleFonts.publicSans(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: languageItems.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final resourceItem = languageItems[index];
                    return GestureDetector(
                      onTap: () {
                        if (resourceItem.onTap != null) {
                          resourceItem.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              resourceItem.iconAsset,
                              width: 48.0,
                              height: 48.0,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              resourceItem.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ** This is where we create the Pther Resources initial card where within it are the links to the other sources
class OtherResourcesSection extends StatefulWidget {
  final bool isExpanded;
  final VoidCallback onTap;

  OtherResourcesSection({required this.isExpanded, required this.onTap});

  @override
  _OtherResourcesSectionState createState() => _OtherResourcesSectionState();
}

class _OtherResourcesSectionState extends State<OtherResourcesSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: isExpanded
              ? null
              : 80, // Set the desired fixed height for the card when not expanded
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Other Resources",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Helpful resources for Computer Science.",
                  style: GoogleFonts.publicSans(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: otherItems.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final resourceItem = otherItems[index];
                    return GestureDetector(
                      onTap: () {
                        if (resourceItem.onTap != null) {
                          resourceItem.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              resourceItem.iconAsset,
                              width: 48.0,
                              height: 48.0,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              resourceItem.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ** This is where we create the IDE section initial card where within it are the links to the IDE's
class IDESection extends StatefulWidget {
  final VoidCallback onTap;
  final bool isExpanded;

  IDESection({required this.isExpanded, required this.onTap});

  @override
  _IDESectionState createState() => _IDESectionState();
}

class _IDESectionState extends State<IDESection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: isExpanded
              ? null
              : 80, // Set the desired fixed height for the card when not expanded
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "IDE",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Check what tools are avaliable for coding",
                  style: GoogleFonts.publicSans(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: ideItems.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final resourceItem = ideItems[index];
                    return GestureDetector(
                      onTap: () {
                        if (resourceItem.onTap != null) {
                          resourceItem.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              resourceItem.iconAsset,
                              width: 48.0,
                              height: 48.0,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              resourceItem.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ** This is where we create the Cyber News section, this where we provide an RSSFeed to the recent cyber news for students
class CyberSection extends StatefulWidget {
  final VoidCallback onTap;
  final bool isExpanded;

  CyberSection({required this.isExpanded, required this.onTap});

  @override
  _CyberSectionState createState() => _CyberSectionState();
}

class _CyberSectionState extends State<CyberSection> {
  bool isExpanded = false;
  List<RssItem>? rssItems;
  int visibleItemCount = 10; // Initial number of items to display
  int totalItems = 0; // Total number of items in the feed

  Future<void> fetchRssFeed() async {
    final response = await http.get(
        Uri.parse("https://thehackernews.com/feeds/posts/default?alt=rss"));

    if (response.statusCode == 200) {
      final feed = RssFeed.parse(response.body);
      setState(() {
        rssItems = feed.items;
        totalItems = rssItems?.length ?? 0;
      });
    } else {
      throw Exception('Failed to load RSS feed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
          if (isExpanded && rssItems == null) {
            // Fetch RSS feed when expanding for the first time
            fetchRssFeed();
          }
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Text(
                "Cyber News",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Learn about exploits!",
                  style: GoogleFonts.publicSans(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isExpanded,
              child: rssItems != null
                  ? Container(
                      height: 300, // Set a fixed or maximum height
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: visibleItemCount,
                            itemBuilder: (context, index) {
                              final item = rssItems![index];
                              return ListTile(
                                title: Text(item.title ?? ""),
                                subtitle: Text(item.pubDate?.toString() ?? ""),
                                leading: item.enclosure?.url != null
                                    ? Image.network(
                                        item.enclosure!.url ??
                                            '', // Provide a default empty string
                                        fit: BoxFit
                                            .cover, // Adjust this as needed
                                        width:
                                            80, // Set the desired width for the image
                                        height:
                                            80, // Set the desired height for the image
                                      )
                                    : Container(), // Empty container if URL is not available
                                onTap: () async {
                                  final url = Uri.parse(item.link ?? "");
                                  if (!await launchUrl(url)) {
                                    throw Exception('Could not launch $url');
                                  }
                                },
                              );
                            },
                          ),
                          if (visibleItemCount < totalItems)
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  // Increase the number of visible items by, e.g., 10
                                  visibleItemCount += 10;
                                });
                              },
                              child: Text('Load More',
                                  style: GoogleFonts.publicSans(
                                    fontSize: 16,
                                    color: Colors.black87,
                                  )),
                            ),
                        ],
                      ),
                    )
                  : CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

// ** This is where we create the Cyber Resource section initial card where within it are the links to the Cyber Resources
class cyberesourceSection extends StatefulWidget {
  final VoidCallback onTap;
  final bool isExpanded;

  cyberesourceSection({required this.isExpanded, required this.onTap});

  @override
  _cyberResourceState createState() => _cyberResourceState();
}

class _cyberResourceState extends State<cyberesourceSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: isExpanded
              ? null
              : 80, // Set the desired fixed height for the card when not expanded
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Cyber Resources",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "expand your cyber impact on campus",
                  style: GoogleFonts.publicSans(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: cyberItems.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final resourceItem = cyberItems[index];
                    double imageWidth = index == 1 ? 65.0 : 48.0;
                    double imageHeight = index == 1 ? 65.0 : 48.0;

                    return GestureDetector(
                      onTap: () {
                        if (resourceItem.onTap != null) {
                          resourceItem.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              resourceItem.iconAsset,
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              resourceItem.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ** This is where we create the IDE section initial card where within it are the links to the IDE's
class cybereventsSection extends StatefulWidget {
  final VoidCallback onTap;
  final bool isExpanded;

  cybereventsSection({required this.isExpanded, required this.onTap});

  @override
  _cybereventsState createState() => _cybereventsState();
}

class _cybereventsState extends State<cybereventsSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: isExpanded
              ? null
              : 80, // Set the desired fixed height for the card when not expanded
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Cyber Events",
                style: GoogleFonts.publicSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Enjoy the events held for Cyber!",
                  style: GoogleFonts.publicSans(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: cyberEvents.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final resourceItem = cyberEvents[index];
                    // Define different image sizes for the first item (BsidesCharm) and the rest
                    double imageWidth = index == 0 ? 80.0 : 48.0;
                    double imageHeight = index == 0 ? 80.0 : 48.0;

                    return GestureDetector(
                      onTap: () {
                        if (resourceItem.onTap != null) {
                          resourceItem.onTap!();
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Container();
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              resourceItem.iconAsset,
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              resourceItem.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResourceItem {
  final String title;
  final String iconAsset;
  final VoidCallback? onTap;

  ResourceItem({
    required this.title,
    required this.iconAsset,
    this.onTap,
  });
}
