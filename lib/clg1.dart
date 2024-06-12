import 'package:edusign/clg.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(clg1());

class College {
  final String name;
  final String location;

  College(this.name, this.location);
}

class clg1 extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<clg1> {
  final List<College> colleges = [
    College('College A', 'Location A'),
    College('College B', 'Location B'),
    // Add more colleges as needed
  ];

  TextEditingController _searchController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _cutoffController = TextEditingController();
  final TextEditingController udidController = TextEditingController();
  String? selectedCategory;
  String? selectedStream;
  List<String> categories = [' Medical', ' Engineering', ' Arts', ' Science'];
  List<String> engineeringStreams = [
    'CSE',
    'Biomedical',
    'Mechanical',
    'Civil',
    'Artificial Intelligence Data Science',
    'Electrical and Electronics',
    'Electrical and Communication',
  ];

  Future<List<College>> findColleges() async {
    // Simulate a time-consuming operation
    await Future.delayed(Duration(seconds: 2));

    // Return a list of colleges (you can fetch data here)
    return [
      College('College C', 'Location C'),
      College('College D', 'Location D'),
      // Add more colleges as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Find College'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => list()));
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => list()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width -
                          90, // Adjust width based on your design
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.grey[200], // Custom search box color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search Colleges',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.location_on), // Location icon
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _cutoffController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter your Cutoff',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.filter_alt),
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: udidController,
                decoration: InputDecoration(
                    labelText: ' Enter your 10th marks(in Percentage)'),
              ),
              TextField(
                controller: _locationController,
                decoration: InputDecoration(labelText: ' Enter location'),
              ),
              DropdownButtonFormField(
                value: selectedCategory,
                items: categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value as String?;
                    selectedStream =
                        null; // Reset selected stream when category changes
                  });
                },
                decoration: InputDecoration(labelText: ' Course'),
              ),
              if (selectedCategory == ' Engineering')
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DropdownButtonFormField(
                    value: selectedStream,
                    items: engineeringStreams.map((stream) {
                      return DropdownMenuItem(
                        value: stream,
                        child: Text(stream),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedStream = value as String?;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Stream',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              // ... (other text fields and dropdowns)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    // Show loading indicator while finding colleges
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );

                    // Find colleges
                    List<College> foundColleges = await findColleges();

                    // Close loading indicator dialog
                    Navigator.of(context, rootNavigator: true).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => clg2(),
                      ),
                    );
                    // Handle the found colleges (you can display them as needed)
                    print('Found Colleges: $foundColleges');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 24.0,
                    ),
                    child: Text(
                      'Find Colleges',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _locationController.dispose();
    _cutoffController.dispose();
    udidController.dispose();
    super.dispose();
  }
}
