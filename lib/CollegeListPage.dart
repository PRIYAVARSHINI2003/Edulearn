import 'package:flutter/material.dart';

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
  List<College> _searchResult = [];

  @override
  void initState() {
    super.initState();
    _searchResult.addAll(colleges);
  }

  void _filterColleges(String query) {
    _searchResult.clear();
    if (query.isEmpty) {
      _searchResult.addAll(colleges);
    } else {
      _searchResult.addAll(colleges.where(
        (college) => college.name.toLowerCase().contains(query.toLowerCase()),
      ));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('College Search'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      onChanged: _filterColleges,
                      decoration: InputDecoration(
                        labelText: 'Search Colleges',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    child: TextField(
                      controller: _locationController,
                      decoration: InputDecoration(
                        labelText: 'Location',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_on),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResult.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_searchResult[index].name),
                    subtitle: Text(_searchResult[index].location),
                    onTap: () {
                      // Implement navigation logic to college details page
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _locationController.dispose();
    super.dispose();
  }
}
