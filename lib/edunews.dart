import 'package:flutter/material.dart';

void main() {
  runApp(Edunews());
}

class GridItem {
  final String paragraph;

  GridItem({
    required this.paragraph,
  });
}

class Edunews extends StatelessWidget {
  final List<GridItem> gridItems = [
    GridItem(
      paragraph:
          "BREAKING SIGN LANGUAGE BARRIER THROUGH VIDEOS IN NAGPUR\n\n - Even while communicating in sign language, one may still get lost in translation. Since even the sign language differs place to place, the National Council of Educational Research ..",
    ),
    GridItem(
      paragraph:
          "RS PURAM DEAF SCHOOL TO BE MADE RESIDENTIAL FACILITY\n\n -The city corporation will convert the RS Puram deaf and dumb school into a residential school for Class XI and Class XII  ..",
    ),
    GridItem(
      paragraph:
          "60% SPECIALLY-ABLED STUDENTS DROP DROP OUT DUE TO TEACHERS’ SHORTAGE\n\n -There are just 2,100 teachers for over 80,000 specially-abled students in Rajasthan. Teachers said this was the primary reason for dropout of of such children from the special government schools in the state..",
    ),
    // Add more grid items with different paragraphs.
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Educational News'),
        ),
        body: ListView.builder(
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            final item = gridItems[index];
            return Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.paragraph,
                      style: TextStyle(
                        fontSize: 18, // Increase font size for the paragraph
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 10), // Add spacing between paragraph and button
                  ElevatedButton(
                    onPressed: () {
                      // Add any custom logic you want here.
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 5, // Adjust the button's vertical padding
                        horizontal: 5, // Adjust the button's horizontal padding
                      ),
                    ),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        fontSize: 13, // Adjust the button's text font size
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
